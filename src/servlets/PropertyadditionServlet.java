package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.PropertyadditionDao;

/**
 * Servlet implementation class propertyadditionServlet
 */
@WebServlet(name="PropertyadditonServlet" , urlPatterns={"/PropertyadditionServlet"})
public class PropertyadditionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyadditionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Test3");
    	try{
        response.setContentType("text/html");    
        PrintWriter out = response.getWriter();   
        
        
        
        String d=request.getParameter("descriptionaddproperty"); 
        
        String a=request.getParameter("Availabilityaddproperty");
        String co=request.getParameter("Costaddproperty");
        String no=request.getParameter("noofroomsaddproperty");
        String s=request.getParameter("sizeaddproperty");
        String ad1=request.getParameter("address1addproperty");
        String ad2=request.getParameter("address2addproperty");
        String c=request.getParameter("cityaddproperty");
        String st=request.getParameter("stateaddproperty");
        String z=request.getParameter("zipcodeaddproperty");
        
        
        HttpSession session = request.getSession();  
        session.setMaxInactiveInterval(10000);
        
       // RegistrationDao.validate(email,n,p)
			if( PropertyadditionDao.validate(d, a, co, no, s,ad1,ad2,c,st, z)){    
		        //session.setAttribute("email", email);
				
				System.out.println("property added successfully");
			 
			    RequestDispatcher rd=request.getRequestDispatcher("SearchTest.jsp");    
			    rd.forward(request,response); 
			  
			}    
			else{    
			    out.print("<p style=\"color:red\">Sorry invalid details</p>");    
			    RequestDispatcher rd=request.getRequestDispatcher("addproperty.jsp");    
			    rd.include(request,response);    
			}
			out.print("<p style=\"color:red\">Property added successfully</p>");
			out.close();
		} /*catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} */  catch(Exception e)
    	{
    		e.printStackTrace();
    	}
	}

}
