<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="com.email.durgesh.Email" %>
<%@ page import ="java.sql.*" %>
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
String reg_id=request.getParameter("reg_id");
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";
Connection conn=null;
ResultSet rs = null;
Statement st = null;
String email=null;
 PreparedStatement pstmt = null;
 try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);
String query = "insert into rejectlist(reg_id,f_name, m_name, l_name, photo, address, zipcode, gender, maritial_status, m_number, email, dob, age, qualification, specialization, designation, department, adhar_num, reg_date, pan_num) select * from emp_reg where reg_id="+reg_id;
pstmt = conn.prepareStatement(query);
int i = pstmt.executeUpdate();
String q="select email from emp_reg where reg_id="+reg_id;
st=conn.createStatement();
rs=st.executeQuery(q);
if(rs.next()){
Email email1=new Email("akboss8822@gmail.com","password");
email1.setFrom("akboss8822@gmail.com","Forensic Management Team");
email1.setSubject("Rejection for the post");
email1.setContent("<h1>Dear Candidate,<br> Greeting from FMS<br>Thank you for your interest in FMS.<br>We regret to infrom that you are not eligible for the applied post.</h1>","text/html");
email1.addRecipient(rs.getString(1));
email1.send();
}	
if(i!=0)
{ 
	String query3="delete from emp_reg where reg_id="+reg_id;
	pstmt=conn.prepareStatement(query3);
	int k=pstmt.executeUpdate();
	if(k!=0){
	}
	pstmt.close();
}	
else
{
System.out.println("failed to insert the data");
}
if(!conn.isClosed()){
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