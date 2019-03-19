package util;

import java.io.IOException;
import java.sql.*;
import java.util.*;

public class DBUtil {
	private static String url;
	private	static String username;
	private static String password;
	static
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Properties properties=new Properties();
		try{
			properties.load(DBUtil.class
					.getResourceAsStream("/jdbc.properties"));
			url =properties.getProperty("jdbc.url");
			username=properties.getProperty("jdbc.username");
			password=properties.getProperty("jdbc.password");
		}catch (IOException e) {
		e.printStackTrace();
		}

	}
	public static Connection getConnection(){
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn){
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
