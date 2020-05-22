package com.home2.controllers;

import java.sql.SQLException;

public class userServiceImpl implements userService{
	
	private userDao userDao;

	
	
	public userDao getUserDao() {
		return this.userDao;
	}



	public void setUserDao(userDao userDao) {
		this.userDao = userDao;
	}



	public boolean isValiduser(String username,String password)throws SQLException{
		return userDao.isValiduser(username, password);

	}
	

}
