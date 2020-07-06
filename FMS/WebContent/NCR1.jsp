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
String date=request.getParameter("date");
String ncrno=request.getParameter("ncrno");
String policestation=request.getParameter("policestation");
String acts=request.getParameter("acts");
String section=request.getParameter("section");
String date1=request.getParameter("date1");
String time=request.getParameter("time");
String nameofcomplainant=request.getParameter("nameofcomplainant");
String nameofwitness=request.getParameter("nameofwitness");
String complaint=request.getParameter("complaint");
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
String query = "insert into ncr(emp_id,date,ncrno,policestation,acts,section,date1,time,nameofcomplainant,nameofwitness,complaint)values('"+emp_id+"','"+date+"','"+ncrno+"','"+policestation+"','"+acts+"','"+section+"','"+date1+"','"+time+"','"+nameofcomplainant+"','"+nameofwitness+"','"+complaint+"')";
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
	out.println("<html><body><script>alert('Your NCR Report is registered Successfully!!!'); window.location = 'NCRTableOfficer.jsp';</script><body><html>");
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