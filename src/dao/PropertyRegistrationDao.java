package dao;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
  
public class PropertyRegistrationDao {  
    public static boolean validate(String name,String email, String phone, String address1, String address2, String city, String state, String zip, String password) throws SQLException {          
        boolean status = false;  
        Connection conn = null;  
        PreparedStatement pst = null;  
		//Driver mysqlDriver=new com.mysql.jdbc.Driver();
          
        
        
        try {  
        	conn=dbconnection.dbconnectionmethod();
    		
            
            pst = conn  
                    .prepareStatement("insert into login(name, email, phone, address1, address2, city, state, zip, password) values(?,?,?,?,?,?,?,?,?)");  
            
            pst.setString(1, name);
            pst.setString(2, email);  
            pst.setString(3, phone);
            pst.setString(4, address1);
            pst.setString(5, address2);  
            pst.setString(6, city);
            pst.setString(7, state);
            pst.setString(8, zip);  
            pst.setString(9, password);
            
            if(pst.executeUpdate()>0)
            	{
            	status=true;
            	}else
            	{
            	status=false;	
            	}
  
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
        }  
        return status;  
    }  
} 