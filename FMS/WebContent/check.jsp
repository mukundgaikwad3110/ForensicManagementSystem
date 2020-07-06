<%@page import="java.sql.*"%>
<html>
<head>

</head>
<%-- <% 
String uname=request.getParameter("username"); 
out.print("Welcome "+ uname);
session.setAttribute("sessname",uname); 
%>  --%>
<%
try{
		String user=request.getParameter("username");
		String emp_id=request.getParameter("id");
		session.setAttribute("sessname",user); 
		session.setAttribute("id",emp_id);
		
		String pass=request.getParameter("pass");
		 Class.forName("com.mysql.jdbc.Driver").newInstance();
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");  
		           Statement st=con.createStatement();
		           ResultSet rs=st.executeQuery("select * from admin where username='"+user+"' and password='"+pass+"'");
		          
		           int count=0;
           while(rs.next())
           {
        	 
		           count++;
           }
          if(count>0)
          {
        	  //response.sendRedirect("WelcomeUser.jsp?id="+emp_id);
        	  out.println("<html><body><script>alert('Username And Password Is Correct!!!'); window.location = 'LoadingAdmin.jsp';</script><body><html>");
	           
	           //response.sendRedirect("AdminPannel.jsp?username="+user);
          }
          else
          {
        	 
           //response.sendRedirect("IncorrectPassword.jsp");
           out.println("<html><body><script>alert('Username Or Password Is Incorrect!!!'); window.location = 'Login2.jsp';</script><body><html>");
           
          }
}
catch(Exception e)
    {
  		System.out.println(e);
	}
%>
</html>