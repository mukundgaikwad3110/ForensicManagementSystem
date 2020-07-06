<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome User</title>
 <link href="css1/style.css" type="text/css" rel="stylesheet">
    <link href="css1/sweetalert.css" type="text/css" rel="stylesheet">
    <script src="css1/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="css1/sweetalert.min.js" type="text/javascript"></script>
    
  
</head>
<body>
<% 
String name=(String)session.getAttribute("sessname"); 
//String id=request.getParameter("id"); 
String id=(String)session.getAttribute("id"); 

String designation=(String)session.getAttribute("designation"); 
//out.print("Hello User: Your designation is : "+designation); 
if(designation.equals("Officer"))
{
	out.print("<html><body><script>alert('Username And Password Is Correct'); window.location = 'LoadingOfficer.jsp';</script><body><html>");
}
if(designation.equals("Supervisor"))
{
	out.print("<html><body><script>alert('Username And Password Is Correct'); window.location = 'LoadingSupervisor.jsp';</script><body><html>");
}
if(designation.equals("Guest"))
{
	out.print("<html><body><script>alert('Username And Password Is Correct'); window.location = 'LoadingGuest.jsp';</script><body><html>");
}
%> 

	
</body>
</html>