package com.home2.controllers;
import com.home2.registerForm.*;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class empcontroller {
	
	@Autowired
	empdao dao;
	
	@Autowired
	private	loginDelegate logindelegate;
	
	
	@RequestMapping("/hp")
	public String homepage() {
		return "home";
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView DisplayLogin(HttpServletRequest req,HttpServletResponse res) {
		ModelAndView model=new ModelAndView("newloginpage");
		login login=new login();
		model.addObject("login",login);
		return model;
		
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView ExecuteLogin(HttpServletRequest req,HttpServletResponse res,@ModelAttribute("login")registerDelegate login) {
		ModelAndView model=null;

		try {
			boolean isValiduser=logindelegate.isValiduser(login.getUsername(),login.getPassword());
				if(isValiduser) {
					req.setAttribute("loggedinuser",login.getUsername());
				 model=new ModelAndView("welcomepage");					
				}
				else {
					model=new ModelAndView("newloginpage");
		model.addObject("login",login);
			req.setAttribute("message","invalid");
				}
			}
		
		catch(Exception e) {
			e.printStackTrace();
		}
return model;
		}
	
	@RequestMapping("/empform")
	public String showempForm(Model m) {
		m.addAttribute("command",new employee());
		return "empform";
		
	}
	@RequestMapping("/timesheetpage")
	public String showtimeSheet(Model m) {
		m.addAttribute("command",new timesheet());
		return "timesheetpage";	
	}

	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	
	public String save(@ModelAttribute("emp")employee emp) {
		try {
		dao.save(emp);
	return "redirect:/viewemp";	
	}catch(DuplicateKeyException ex) {	
	}
		return "duplicate";
	}
	
	@RequestMapping("/viewemp")
	public String viewemp(Model m) {
		List<employee>list=dao.getEmployees();
		m.addAttribute("list",list);
		return "viewemp";
	}
	
	@RequestMapping(value="/editemp/{id}")
	public String edit(@PathVariable int id,Model model) {
		employee emp=dao.getempByid(id);
		model.addAttribute("command",emp);
		return "empeditform";
		
	}
	
	@RequestMapping(value="/editsave",method=RequestMethod.POST)
	public String editsave(@ModelAttribute("emp")employee emp) {
		dao.update(emp);
		return "redirect:/viewemp";
	}
	
	@RequestMapping(value="/deleteemp/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		dao.delete(id);
		return "redirect:/viewemp";
	}
	
	@RequestMapping("/rf")
	public String showRegisterform(Model model) {
		model.addAttribute("command",new registerDelegate());
		return "registerForm";
	}

	@RequestMapping(value="/LP",method=RequestMethod.POST)
	public String sendToregisterDB(@ModelAttribute("register")registerDelegate registerdelegate) {
		
		dao.saveToregisterDB(registerdelegate);
		return "home";
	}
	
	@RequestMapping(value="/savingUnameandPassword",method=RequestMethod.POST)
	public String saveunamePword(@ModelAttribute("saveUandP")registerDelegate upclass) {
		dao.saveToUPDB(upclass);
		return "redirect:/newloginpage";
	}
	
	@RequestMapping(value="/searchbyid",method=RequestMethod.POST)
	public String searchbyid(@RequestParam(name="id") int id,Model model){
		try {
		employee emp=dao.getempByid(id);
		model.addAttribute("emp",emp);
		return "welcomepage";
		}catch(EmptyResultDataAccessException e) {
			e.getMessage();
		}
		return "INVALID";
	}

	

	@ResponseBody
	@RequestMapping(value="/timesheetAction",method=RequestMethod.POST)
	public String timesheetAction(@ModelAttribute("timesheet")timesheet timesheet) {
		dao.timesheetAction(timesheet);
		return "Done";
	}
	
	@RequestMapping(value="/paycheck",method=RequestMethod.POST)
	public String paycheck(@RequestParam(name="paycheckid") int empid,Model model) {
		timesheet ts=dao.gettimesheetValues(empid);
		model.addAttribute("list",ts);
	return "paycheckpage";
		
}
	
	
	}

