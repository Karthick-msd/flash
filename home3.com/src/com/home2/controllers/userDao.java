package com.home2.controllers;

import java.sql.SQLException;

public interface userDao {

	public boolean isValiduser(String username,String password)throws SQLException;
}
