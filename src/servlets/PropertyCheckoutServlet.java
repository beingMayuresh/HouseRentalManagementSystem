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
import dao.CheckoutDao;

/**
 * Servlet implementation class propertyadditionServlet
 */
@WebServlet(name="PropertyCheckoutServlet" , urlPatterns={"/PropertyCheckoutServlet"})
public class PropertyCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyCheckoutServlet() {
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
        
        
        
        String no=request.getParameter("card_number"); 
        
        String na=request.getParameter("card_name");
        String em=request.getParameter("expire_month");
        String ey=request.getParameter("expire_year");
        String cv=request.getParameter("cvv");

        
        HttpSession session = request.getSession();  
        session.setMaxInactiveInterval(10000);
        
       // RegistrationDao.validate(email,n,p)
			if( CheckoutDao.validate(no,na,em,ey,cv)){    
		        //session.setAttribute("email", email);
				out.print("<p style=\"color:black\">card details added successfully</p>");
				System.out.println("card details added successfully");
			 
			    RequestDispatcher rd=request.getRequestDispatcher("SearchTest.jsp");    
			    rd.forward(request,response); 
			  
			}    
			else{    
			    out.print("<p style=\"color:red\">Sorry invalid details</p>");    
			    RequestDispatcher rd=request.getRequestDispatcher("Checkout.jsp");    
			    rd.include(request,response);    
			}
			
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
