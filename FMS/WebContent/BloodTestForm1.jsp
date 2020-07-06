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
<title>Blood Test Form</title>
</head>
<body>
<% 
String name=(String)session.getAttribute("sessname"); 
String emp_id=(String)session.getAttribute("id"); 
 //out.print("Hello User: Your name and id is: '"+name+"','"+emp_id+"';"); 
%> 

<%
String ncrno=request.getParameter("ncrno");

String coldate=request.getParameter("coldate");

String labname=request.getParameter("labname");
String drname=request.getParameter("drname");

String patientname=request.getParameter("patientname");
String gender=request.getParameter("gender");

String bg=request.getParameter("bg");
String wbc=request.getParameter("wbc");
String rbc=request.getParameter("rbc");
String hb=request.getParameter("hb");
String glucose=request.getParameter("glucose");
String pc=request.getParameter("pc");
String bun=request.getParameter("bun");


String creatine=request.getParameter("creatine");
String sodium=request.getParameter("sodium");
String cd=request.getParameter("cd");
String alcpercentage=request.getParameter("alcpercentage");
String alctype=request.getParameter("alctype");
String drugpercentage=request.getParameter("drugpercentage");


String drugtype=request.getParameter("drugtype");
String poisonpercentage=request.getParameter("poisonpercentage");
String poisontype=request.getParameter("poisontype");



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
String query = "INSERT INTO `bloodtest`(`ncrno`, `emp_id`, `coldate`, `labname`, `drname`,`patientname`,`gender`, `bg`, `wbc`, `rbc`, `hb`, `glucose`, `pc`, `bun`, `creatine`, `sodium`, `cd`, `alcpercentage`, `alctype`, `drugpercentage`, `drugtype`, `poisonpercentage`, `poisontype`) VALUES ('"+ncrno+"','"+emp_id+"','"+coldate+"','"+labname+"','"+drname+"','"+patientname+"','"+gender+"','"+bg+"','"+wbc+"','"+rbc+"','"+hb+"','"+glucose+"','"+pc+"','"+bun+"','"+creatine+"','"+sodium+"','"+cd+"','"+alcpercentage+"','"+alctype+"','"+drugpercentage+"','"+drugtype+"','"+poisonpercentage+"','"+poisontype+"')";
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
	out.println("<html><body><script>alert('Your Blood Test Form is registered Successfully!!!'); window.location = 'BloodTestGuestTable.jsp';</script><body><html>");
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