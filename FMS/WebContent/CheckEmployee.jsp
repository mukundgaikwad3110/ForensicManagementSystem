<%@page import="java.sql.*"%>
<%
try{
String employee=request.getParameter("employee");
String user=request.getParameter("username");
String pass=request.getParameter("pass");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from permanent_emp where designation='"+employee+"'and username='"+user+"' and password='"+pass+"'");
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
           out.println("welcome "+user);
           response.sendRedirect("AdminPannel.jsp");
           }
          else{
           response.sendRedirect("EmployeeLogin.jsp");
           
          }
        }
    catch(Exception e){
    System.out.println(e);
}
%>