package dao;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
  
public class Logindao {  
    public static boolean validate(String name, String pass) throws SQLException {          
        boolean status = false;  
        Connection conn = null;  
        PreparedStatement pst = null;  
        ResultSet rs = null;  
		
        
        
        try {  
        	conn=dbconnection.dbconnectionmethod();
            System.out.println("back to dao");
            pst = conn  
                    .prepareStatement("select * from login where email=? and password=?");  
            pst.setString(1, name);  
            pst.setString(2, pass); 
            System.out.println("query executed");
  
            rs = pst.executeQuery();  
            status=rs.next();
            System.out.println("query exec 1");
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
        return status;  
    }  
} 