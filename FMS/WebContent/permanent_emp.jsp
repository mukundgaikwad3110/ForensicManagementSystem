<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="com.email.durgesh.Email" %>
<%@ page import ="javax.servlet.*,java.text.*" %>
<%@ page import="java.io.*,java.util.Date"%>
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
String f_name=request.getParameter("f_name");
out.println(f_name);
String m_name=request.getParameter("m_name");
String l_name=request.getParameter("l_name");
//String img=request.getParameter("newfile");
String address=request.getParameter("address");
String gender=request.getParameter("gender");
String m_status=request.getParameter("m_status");
String m_number=request.getParameter("mobile_num");
String email=request.getParameter("email");
String dob=request.getParameter("dob");
String age=request.getParameter("age");
String qualification=request.getParameter("qualification");
String specialization=request.getParameter("specialization");
String designation=request.getParameter("designation");
String department=request.getParameter("department");
String adhar_num=request.getParameter("adhar_num");
String pan_num=request.getParameter("pan_num");
String username=request.getParameter("username");
String password=request.getParameter("output");
String reg_id=request.getParameter("reg_id");
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";

Connection conn=null;
ResultSet rs = null;
Statement st = null;
 PreparedStatement pstmt = null;
 //Part part = request.getPart("image");
 
	
	
try
{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(Database,UserName,Password);
	String query = "insert into permanent_emp(f_name,m_name,l_name,image,address,gender,m_status,m_number,email,dob,age,qualification,specialization,designation,department,adhar_num, pan_num) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
		out.println("Successfully connected to " + "MySQL server using TCP/IP...");
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