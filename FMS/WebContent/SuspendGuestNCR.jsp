<%@page import="java.sql.*"%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>

</head>

<%
try{
		
		String guest=request.getParameter("id");
		
		out.println(guest);
		 Class.forName("com.mysql.jdbc.Driver").newInstance();
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");  
		    Connection connection = null;
		    Statement st = null;
		    ResultSet rs = null;
		    st=con.createStatement();
		    String sql = "delete  from caseguest where guest_id="+guest;
		  st.executeUpdate(sql); 
		        
		          
           
           
        	  out.println("<html><body><script>alert('Guest Suspended Successfully!!!'); window.location = 'NCRTableOfficer.jsp';</script><body><html>");
	           
	          
        
}
catch(Exception e)
    {
  		System.out.println(e);
	}
%>
</html>