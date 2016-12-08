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
import dao.PropertyRegistrationDao;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet(name="PropertyRegistrationServlet" , urlPatterns={"/PropertyRegistrationServlet"})
public class PropertyRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyRegistrationServlet() {
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
        
        String n=request.getParameter("usernamesignup"); 
        String email=request.getParameter("emailsignup");
        String ph=request.getParameter("phonesignup");
        String a1=request.getParameter("address1signup");
        String a2=request.getParameter("address2signup");
        String c=request.getParameter("citysignup");
        String s=request.getParameter("statesignup");
        String z=request.getParameter("zipcodesignup");
        String p=request.getParameter("passwordsignup");
        String cp=request.getParameter("passwordsignup_confirm");
        
        HttpSession session = request.getSession();  
        session.setMaxInactiveInterval(10000);
        
       // RegistrationDao.validate(email,n,p)
			if( p.equals(cp) && PropertyRegistrationDao.validate(n, email, ph, a1, a2, c, s, z, p)){    
		        session.setAttribute("email", email);
			    RequestDispatcher rd=request.getRequestDispatcher("Home_Page_Final.jsp");    
			    rd.forward(request,response);    
			}    
			else{    
			    out.print("<p style=\"color:red\">Sorry username or password error</p>");    
			    RequestDispatcher rd=request.getRequestDispatcher("Register_Page.jsp");    
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
