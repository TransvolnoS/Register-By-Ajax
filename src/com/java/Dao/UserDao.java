package com.java.Dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ScalarHandler;

public class UserDao {

	public int getFlag(String username) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(com.java.Utils.DataSourceUtils.getDataSource());
		String sql="select count(*) from user where username=?";
		int row =((Long)qr.query(sql, new ScalarHandler(), username)).intValue();
		return row;
	}

}
