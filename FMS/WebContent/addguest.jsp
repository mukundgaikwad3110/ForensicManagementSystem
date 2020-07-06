<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
  <%@ page import ="java.sql.*" %>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String emp_id=(String)session.getAttribute("id"); 
String guest_id[]=request.getParameterValues("guestid");

String case_id=request.getParameter("ncrno");

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
String guest=request.getParameter("guest");
//String guest_id=request.getParameter("id");


out.println(case_id);
java.sql.Connection con = null;
java.sql.Statement stmt = null;
int result=0;
ResultSet rs=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");
	for(int i=0;i<guest_id.length;i++){
		//String sql="insert into caseguest(case_id,guest_id) values('"+case_id+"','"+guestid[i]+"')";
		String query = "insert into guest_ncr(emp_id,date,ncrno,policestation,acts,section,date1,time,nameofcomplainant,nameofwitness,complaint,guest)values('"+emp_id+"','"+date+"','"+ncrno+"','"+policestation+"','"+acts+"','"+section+"','"+date1+"','"+time+"','"+nameofcomplainant+"','"+nameofwitness+"','"+complaint+"','"+guest_id[i]+"')";
		PreparedStatement ps=con.prepareStatement(query);
		stmt = con.createStatement();	
	result = ps.executeUpdate();
	
	}
	}
catch(Exception e){
System.out.println(e);
}

if(result!=0){
	out.print("<html><body><script>alert('Guest is added sucessfully');window.location.href='NCRTableOfficer.jsp';</script><body><html>");
	
}
















%>
</body>
</html>