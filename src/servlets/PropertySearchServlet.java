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
import dao.Logindao;
import dao.SearchDao;

/**
 * Servlet implementation class PropertySearchServlet
 */
@WebServlet("/PropertySearchServlet")
public class PropertySearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertySearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		try{
	        response.setContentType("text/html");    
	        PrintWriter out = response.getWriter();    
	        
	        String keyword=request.getParameter("keyword");    
	        String cost=request.getParameter("cost");
	        String size=request.getParameter("size");
	        String location=request.getParameter("location");
	        System.out.println(keyword+" "+cost+" "+size+" "+location);
	        HttpSession session = request.getSession();
	        
	        SearchDao.performSearch(keyword,cost,size,location);
	        
				/*if(Logindao.validate(n, p)==true){    
			        session.setAttribute("email", n);
				    RequestDispatcher rd=request.getRequestDispatcher("Home_Page_Final.jsp");    
				    rd.forward(request,response);    
				}    
				else{    
				    out.print("<p style=\"color:red\">Sorry username or password error</p>");    
				    RequestDispatcher rd=request.getRequestDispatcher("Register_page.jsp");    
				    rd.include(request,response);    
				}*/
				out.close();
			}catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	}

}
