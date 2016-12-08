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
        String loc = (String)session.getAttribute("location");
        System.out.println(loc);
        //String loc = location.toString();

            //String sql1= "SELECT * FROM `property` WHERE and City=?";
                pst = conn.prepareStatement("SELECT * FROM property WHERE City=?") ;
                pst.setString(1,loc);
                ResultSet resultset = null;
            resultset = pst.executeQuery();
           
            %>
            <form method="get" action="OwnerServlet">
            <TABLE BORDER="1">
            <tr>
<th>Property id</th>
<th>Description</th>
<th>Cost</th>
<th>Number of rooms</th>
<th>Size</th>
<th>Address</th>
<th>City</th>
<th>State</th>
<th>Zipcode</th>

</tr>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
                <TD> <%= resultset.getString(7) %></td>
                <TD> <%= resultset.getString(9) %></TD>
                <TD> <%= resultset.getString(10) %></TD>
                <TD> <%= resultset.getString(11) %></TD>
            </TR>
            </TABLE><br>
            <input type="hidden" name="prop_id" value="<%=resultset.getString(1)%>">
            <% }%>
        
        <input type="submit" value="Owner details"/>
    </BODY>
</HTML>