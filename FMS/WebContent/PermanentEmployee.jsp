<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	String rid=request.getParameter("reg_id"); 
	String username=request.getParameter("username");
	
	String dt = request.getParameter("date");
	
	String dateParts[] = dt.split("-");
	String month  = dateParts[0];
	String day  = dateParts[2];
	String year = dateParts[1]; 
	
	String password=""+username+"_"+day+"";
	
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
		
		String query = "INSERT INTO permanent_emp (f_name,m_name,l_name,image,address,gender,m_status,m_number,email,dob,age,qualification,specialization,designation,department,adhar_num,pan_num,username,password) SELECT f_name,m_name,l_name,image,address,gender,maritial_status,m_number,email,dob,age,qualification,specialization,designation,department,adhar_num,pan_num,?,? FROM registered_emp1 where reg_id='"+rid+"'";
		pstmt = conn.prepareStatement(query); 
		
		pstmt.setString(1,username);
		
		pstmt.setString(2,password);
		
		int i = pstmt.executeUpdate();
		
				if(i!=0)
				{
					String query3="delete from registered_emp1 where reg_id="+rid;
					pstmt=conn.prepareStatement(query3);
					int k=pstmt.executeUpdate();
						if(i!=0)
						{
								System.out.println("Record has been inserted");
						}
					pstmt.close();
					//System.out.println("Record has been inserted");
				}
				else
				{
				System.out.println("failed to insert the data");
				}
				if(!conn.isClosed())
				{
					//out.println("Successfully connected to " + "MySQL server using TCP/IP...");
					response.sendRedirect("ResultForPermanentEmployee.jsp");
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