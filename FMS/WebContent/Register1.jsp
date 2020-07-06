<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  String email=request.getParameter("email");
  String mob_number=request.getParameter("mob_number");
  
  String Database="jdbc:mysql://localhost:3306/rationcarddb";
  String UserName="root";
  String Password="";
  Connection conn=null;
  ResultSet rs = null;
  Statement st = null;
  PreparedStatement pstmt,pstmt1,pstmt2 = null;
  try
  {
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  conn = DriverManager.getConnection(Database,UserName,Password);
  
  String sql_u = "SELECT * FROM user1 WHERE username=?";
  pstmt1=conn.prepareStatement(sql_u);
 
  pstmt1.setString(1,username);
  
   rs = pstmt1.executeQuery();
   
  if (!rs.next()) {
	 // out.println("<html><body><script>alert('username is available!!!'); </script><body><html>");/* window.location = 'Register.jsp'; */
	  String query = "insert into user1(username,password,email,mob_number)values('"+username+"','"+password+"','"+email+"','"+mob_number+"')";
	  pstmt = conn.prepareStatement(query);
	  int i = pstmt.executeUpdate();
	  if(i!=0)
	  {
	  	pstmt.close();
	  System.out.println("Record has been inserted");
	  }
	  else
	  {
	  System.out.println("failed to insert the data");
	  }
	  if(!conn.isClosed())
	  {
		  	
		  	out.println("<html><body><script>alert('Your account created Successfully!!!'); window.location = 'Register.jsp';</script><body><html>");
		  	conn.close();
		} 
  }
  else {
	  out.println("<html><body><script>alert('username is not  available!!!'); window.location = 'Register.jsp';</script><body><html>");
  } 
 
  
  
  }
  catch (Exception e)
  {
  	out.println("Unable to connect to database.");
  System.out.println(e);
  }
  
  %>
  	
  	
</body>
</html>