package com.home2.controllers;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class userDaoImpl implements userDao {
	DataSource datasource;
	
	public DataSource getDatasource() {
		return this.datasource;
	}
	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
	}
	public boolean isValiduser(String username,String Password) throws SQLException{
		String sql="select count(1) from registerDB2 where username=? and password=?";
		PreparedStatement psmt=datasource.getConnection().prepareStatement(sql);
		psmt.setString(1,username);
		psmt.setString(2,Password);
		ResultSet resultset=psmt.executeQuery();
		if(resultset.next()) 
			return (resultset.getInt(1)>0);
			else
				return false;
		
	}

}
