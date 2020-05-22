package com.home2.controllers;
import com.home2.registerForm.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


public class empdao {
	
	JdbcTemplate tmplate;

	public void setTmplate(JdbcTemplate tmplate) {
		this.tmplate = tmplate;
	}
	
		
	public int save(employee p) {
		String sql="insert into empTab(id,name,salary,designation)"+"values(?,?,?,?)";
		return tmplate.update(sql,p.getId(),p.getName(),p.getSalary(),p.getDesignation());
		
	}
	
	public employee getempByid(int id) {
		String sql="select * from empTab where id=?";
		return tmplate.queryForObject(sql,new Object[] {id},new BeanPropertyRowMapper<employee>(employee.class));
		
	}
	
	public employee searchByid(int id) {
		String sql="select * from empTab where id="+id+"";
		return tmplate.queryForObject(sql,new Object[] {id},new BeanPropertyRowMapper<employee>(employee.class));
		
	}
	
	public int update(employee p) {
	   String sql="update empTab set name='"+p.getName()+"', salary="+p.getSalary()+",designation='"+p.getDesignation()+"' where id="+p.getId()+"";    
		return tmplate.update(sql);
	}
	
	public int delete(int id) {
		String sql="delete from empTab where id="+id+"";
		return tmplate.update(sql);
	}
	
	
//	This method is sending the userInformation to registerDB2
	
	public int saveToregisterDB(registerDelegate rd) {
		String sql="insert into registerDB2(firstname,lastname,mailid,dob,username,password)"+" values(?,?,?,?,?,?)";
		return tmplate.update(sql,rd.getFirstname(),rd.getLastname(),rd.getMailid(),rd.getDob(),rd.getUsername(),rd.getPassword());
	}
	
	
	public int saveToUPDB(registerDelegate rd) {
		String sql="inser into registerDB2(username,password)"+"values(?,?)";
		return tmplate.update(sql,rd.getUsername(),rd.getPassword());
		
	}
	
	
	public int timesheetAction(timesheet ts) {
		String sql="insert into timesheet3(empid,grade,company,domain,monday,tuesday,wednesday,thursday,friday)"+"values(?,?,?,?,?,?,?,?,?)";
		return tmplate.update(sql,ts.getEmpid(),ts.getGrade(),ts.getCompany(),ts.getDomain(),ts.getMonday(),ts.getTuesday(),ts.getWednesday(),ts.getThursday(),ts.getFriday());
		
	}
	
	
	public timesheet gettimesheetValues(int empid){
		String sql="select * from timesheet3 where empid=?";
		return tmplate.queryForObject(sql,new Object[] {empid},new BeanPropertyRowMapper<timesheet>(timesheet.class));

//		return tmplate.query("select * from timesheet2 where id=?",new RowMapper<timesheet>(){
		
//
//			@Override
//			public timesheet mapRow(ResultSet rs, int row) throws SQLException {
//				timesheet t=new timesheet();
//				t.setEmpid(rs.getInt(1));
//				t.setGrade(rs.getString(2));
//				t.setCompany(rs.getString(3));
//				t.setDomain(rs.getString(4));
//				t.setMonday(rs.getString(5));
//				t.setTuesday(rs.getString(6));
//				t.setWednesday(rs.getString(7));
//				t.setThursday(rs.getString(8));
//				t.setFriday(rs.getString(9));
//				return t;
//			}
//			
//		});
		
	}
	
	
	public List<employee>getEmployees(){
		return tmplate.query("select * from empTab",new RowMapper<employee>() {
			
			public employee mapRow(ResultSet rs,int row)throws SQLException{
			employee e=new employee();
			e.setId(rs.getInt(1));
			e.setName(rs.getString(2));
			e.setSalary(rs.getInt(3));
			e.setDesignation(rs.getString(4));
			return e;
			
		}
			
	});

}
}