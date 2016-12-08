package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbconnection {

	public static  Connection dbconnectionmethod() {

		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/";
		String dbName="rental_portal";
		String driver="com.mysql.jdbc.Driver";
		try {
			Class.forName(driver).newInstance();

		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {

			conn = DriverManager.getConnection(url+dbName, "root", "");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
