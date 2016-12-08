package dao;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
  
public class PropertyadditionDao {  
    public static boolean validate(String Description, String Availability, String Cost, String NumberOfRooms, String Size,String AddressLine1,String AddressLine2,String City, String State, String Zipcode) throws SQLException {          
        boolean status = false;  
        Connection conn = null;  
        PreparedStatement pst = null;  
		//Driver mysqlDriver=new com.mysql.jdbc.Driver();
          
        
        
        try {  
        	conn=dbconnection.dbconnectionmethod();
    		
            
            pst = conn  
                    .prepareStatement("insert into property(Description,Availability ,Cost,NumberOfRooms,Size ,AddressLine1,AddressLine2, City,State,Zipcode) values(?,?,?,?,?,?,?,?,?,?)");  
            
            
            pst.setString(1, Description);  
            pst.setString(2, Availability);
            pst.setString(3, Cost);
            pst.setString(4, NumberOfRooms);  
            pst.setString(5, Size);
            pst.setString(6, AddressLine1);
            pst.setString(7, AddressLine2);  
            pst.setString(8, City);
            pst.setString(9, State);
            pst.setString(10, Zipcode);
            
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