package dao;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
  
public class CheckoutDao {  
    public static boolean validate(String CardNumber, String NameOnCard, String ExpiryMonth, String ExpiryYear, String CVV) throws SQLException {          
        boolean status = false;  
        Connection conn = null;  
        PreparedStatement pst = null;  
		//Driver mysqlDriver=new com.mysql.jdbc.Driver();
          
        
        
        try {  
        	conn=dbconnection.dbconnectionmethod();
    		
            
            pst = conn  
                    .prepareStatement("insert into creditcarddetails(CardNumber,NameOnCard ,ExpiryMonth,ExpiryYear,CVV) values(?,?,?,?,?)");  
            
            
            pst.setString(1, CardNumber);  
            pst.setString(2, NameOnCard);
            pst.setString(3, ExpiryMonth);
            pst.setString(4, ExpiryYear);  
            pst.setString(5, CVV);
            
            
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