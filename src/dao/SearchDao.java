package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SearchDao {

	public static void performSearch(String keyword,String cost,String size,String location){ 
		
		boolean status = false;  
		Connection conn = null;  
		PreparedStatement pst = null;  
		ResultSet rs = null;  
		try {  
			conn=dbconnection.dbconnectionmethod();
			pst = conn.prepareStatement("select * from property where City=? and Cost<? and NumberOfRooms=? ");  
		
			pst.setString(1, location);
			pst.setString(2, cost);
			pst.setString(3, size);
			//pst.setString(4, keyword);
			//pst.setString(5, keyword);

			rs = pst.executeQuery();  
			while(rs.next())
			System.out.println(rs.getString("City"));

		} catch (Exception e) {  
			System.out.println(e); 
			e.printStackTrace();
		} finally {  
			if (conn != null) {  
				try {  
					conn.close();  
				} catch (SQLException e) {  
					e.printStackTrace();  
				}  
			}  
			if (pst != null) {  
				try {  
					pst.close();  
				} catch (SQLException e) {  
					e.printStackTrace();  
				}  
			}  
			if (rs != null) {  
				try {  
					rs.close();  
				} catch (SQLException e) {  
					e.printStackTrace();  
				}  
			}  
		}  
	}
}
