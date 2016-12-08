<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%  
String username=(String)request.getAttribute("name");  
if(username!=null){  
out.print("Hello "+username);  
} else{
	out.print("Hello Guest");
}  
 %> 
 
<html><head>
<link rel="stylesheet" href="css/home.css" type="text/css">
<link rel="stylesheet" href="css//jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<title>My Vacation</title>
<style type="text/css">
  h2 {letter-spacing: 5px; font-size: .3in; 
  background-color: rgb(0,0,100); color: white;
  text-transform: uppercase; width: 600px}
  span {color: red}
  legend{font-variant: small-caps; font-weight:bold}
  fieldset{width: 600px; font-family: arial; 
           background-color: lightblue; color: rgb(0,0,100)}
  label {display: block; position: relative; line-height:2;
         margin: 10px 0px;}
  input {position: absolute; margin-left: 30px; width: 25em
         left: 180px}
  .placeButtons {position: relative; left: 0px; width: 110px} 
</style>

 <script>
  $(function() {
    $( "#tabs" ).tabs();
  });
  </script>

</head>
<body style="margin:0px;" background="http://www.macwallhd.com/wp-content/Wallpapers/20121028/Wallpaper%20Vacation%20Silhouette%20Island%20Seychelles888.jpg">
<form action="Destinationselection" method=post>
<div class="header" >
<img src="images/myvacalogo.png" alt="logo" style="width: 122px;" >  
	<div>Hello </div>
    <a href="Home_Page_Final2.jsp" class="btn btn-lg btn-block  btn-header " style="text-decoration: none;float:right; margin-top:15px;margin-right:10px;"> Logout </a>
	  
	    
</div>
<div class="maincontainer">
<div class="widget">
<div id="tabs">
  <ul>
    <li><a href="#destination">Destination</a></li>
  </ul>
<div class="destination">
<table border=1 style="width:100%">
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
 
     <tr><td>
   	<span class="widget-text">property100</span> </td>
    <td>
   	<span class="widget-text">Beautiful beach house</span> </td>
   	<td>
   	<span class="widget-text">1500$</span> </td>
   	<td align="right">
   	<span class="widget-text">5</span> </td>
   	<td>
   	<span class="widget-text">1300</span> </td>
   	<td>
   	<span class="widget-text">1200,Dorothy Ave</span> </td>
   	<td>
   	<span class="widget-text">Charlotte</span> </td>
   	<td>
   	<span class="widget-text">NC</span> </td>
   	<td>
   	<span class="widget-text">28262</span> </td>
   	<td><input type="submit" value="View owner details"/></td>
    </tr> 
        
    

</table>

</div>

</div>
 


</div>

</div>
<div class="footer">
</div>
</form>
</body>
</html>