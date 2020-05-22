package com.home2.controllers;

import java.sql.SQLException;

public interface userService {
	public boolean isValiduser(String username,String password) throws SQLException; 

}
