package com.home2.controllers;

import java.sql.SQLException;

public class loginDelegate {

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
	
}
