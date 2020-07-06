<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
	  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Register</title>
  <link rel="stylesheet" href="register.css">
</head>
<body>
  <form method="post" action="Register1.jsp" id="register_form">
  	<h1>Register</h1>
  	<div >
	  <input type="text" name="username" placeholder="Username" value="<% request.getParameter("username");%>">
	 
  	</div>
  	
  	<div>
  		<input type="password"  placeholder="Password" name="password" value="<% request.getParameter("password");%>">
  	</div>
  	<div>
      <input type="email" name="email" placeholder="Email" value="<% request.getParameter("email");%>">
     
      	<span></span>
      
  	</div>
  	<div>
      <input type="text" name="mob_number" placeholder="Mobile Number" value="<% request.getParameter("mob_number");%>">
     
      	<span></span>
      
  	</div>
  	<div>
  		<button type="submit" name="register" id="reg_btn">Register</button>
  	</div>
  
  	
  </form>
</body>
</html>
