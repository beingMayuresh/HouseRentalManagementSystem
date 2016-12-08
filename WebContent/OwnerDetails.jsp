<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%@ page import="dao.*" %>



<HTML>
    <HEAD>
        <TITLE>Selecting Publishers From a Database</TITLE>
    </HEAD>

    <BODY>
        <H1>Selecting Publishers From a Database</H1>

        <% 
        Connection conn = null; 
		PreparedStatement pst = null; 
        conn=dbconnection.dbconnectionmethod();
        //HttpSession session1 = request.getSession();
        String pid = (String)session.getAttribute("prop_id");
        System.out.println(pid);
        //String loc = location.toString();

            //String sql1= "SELECT * FROM `property` WHERE and City=?";
                pst = conn.prepareStatement("select * from user where UserID in (select UserID from post where PropertyID= ?)") ;
                pst.setString(1,pid);
                ResultSet resultset = null;
            resultset = pst.executeQuery();
           
            %>
            <form>
            <TABLE BORDER="1">
            <tr>
<th>Ownerid</th>
<th>First Name</th>
<th>Last Name</th>
<th>email</th>
<th>Phone number</th>
<th>Address</th>
<th>City</th>
<th>State</th>
<th>Zipcode</th>

</tr>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(7) %></td>
                <TD> <%= resultset.getString(9) %></TD>
                <TD> <%= resultset.getString(10) %></TD>
                <TD> <%= resultset.getString(11) %></TD>
            </TR>
            </TABLE><br>
            </form>
            <input type="hidden" name="prop_id" value="<%=resultset.getString(1)%>">
            <% }%><br>
        
        <a href="Checkout.jsp">
   <button>Rent property</button>
</a>
    </BODY>
</HTML>