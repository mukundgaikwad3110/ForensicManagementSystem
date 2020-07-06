<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String name=(String)session.getAttribute("sessname"); 
String emp_id=(String)session.getAttribute("id"); 
 //out.print("Hello User: Your name and id is: '"+name+"','"+emp_id+"';"); 
%> 

<%
String firid=request.getParameter("firid");
String firno=request.getParameter("firno");

String info=request.getParameter("info");
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";
Connection conn=null;
ResultSet rs = null;
Statement st = null;
PreparedStatement pstmt = null;
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);

String query = "INSERT INTO infofir (firid,firno,info) VALUES ('"+firid+"','"+firno+"','"+info+"')";
						 
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
if(!conn.isClosed()){
	/* out.println("Your NCR Report is registered Successfully"); */
	out.println("<html><body><script>alert('Your FIR Report is Updated Successfully!!!'); window.location = 'FIRTableOfficer.jsp';</script><body><html>");
	conn.close();
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