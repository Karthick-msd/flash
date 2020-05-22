package com.home2.registerForm;

import java.sql.Date;
import java.sql.SQLException;


import com.home2.controllers.userService;


public class registerDelegate {

private userService userService;

	
	public userService getUserService() {
		return this.userService;
	}
	public void setUserService(userService userService) {
		this.userService = userService;
	}
	public boolean isValiduser(String username,String password) throws SQLException{
	return userService.isValiduser(username, password);	
	}

	private String firstname;
	private String lastname;
	private String mailid;
	private Date dob;
	private String username;
	private String password;
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

}
