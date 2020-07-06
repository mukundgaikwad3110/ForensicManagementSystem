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
String emp_id1=(String)session.getAttribute("id"); 

 //out.print("Hello User: Your name and id is: '"+name+"','"+emp_id+"','"+ncr_id+"';"); 
%> 

<%
String emp_id=request.getParameter("emp_id");
String ncr_id=request.getParameter("ncr_id");
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
String query = "Update ncr set policestation=?,acts=?,section=?,nameofcomplainant=?,nameofwitness=?,complaint=? where ncr_id="+ncr_id;
pstmt = conn.prepareStatement(query);


pstmt.setString(1,policestation);
pstmt.setString(2, acts);
pstmt.setString(3, section);
pstmt.setString(4, nameofcomplainant);
pstmt.setString(5, nameofwitness);
pstmt.setString(6, complaint);
int i = pstmt.executeUpdate();
if(i != 0)
{
	String query3 = "Update guest_ncr set policestation=?,acts=?,section=?,nameofcomplainant=?,nameofwitness=?,complaint=? where ncrno="+ncrno;
	pstmt=conn.prepareStatement(query3);
	pstmt.setString(1,policestation);
	pstmt.setString(2, acts);
	pstmt.setString(3, section);
	pstmt.setString(4, nameofcomplainant);
	pstmt.setString(5, nameofwitness);
	pstmt.setString(6, complaint);
	int k=pstmt.executeUpdate();
	if(k!=0)
	{
			System.out.println("Record has been Updated");
	}
pstmt.close();
}
else
{
System.out.println("failed to Update the Record");

}
if(!conn.isClosed()){
	/* out.println("Your NCR Report is registered Successfully"); */
	out.println("<html><body><script>alert('Your NCR Report is Updated Successfully!!!'); window.location = 'NCRTableOfficer.jsp';</script><body><html>");
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