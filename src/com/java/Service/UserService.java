package com.java.Service;

import java.sql.SQLException;

import com.java.Dao.UserDao;

public class UserService {

	public int getFlag(String username) throws SQLException {
		// TODO Auto-generated method stub
		UserDao ud = new UserDao();
		return ud.getFlag(username);
	}

}
