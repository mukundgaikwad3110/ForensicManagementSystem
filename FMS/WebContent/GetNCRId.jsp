<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "forensic";
String userid = "root";
String password = "";
Connection con =null;
   String ncr_id = "";
   String q = request.getParameter("q");
   try {
        Class.forName("com.mysql.jdbc.Driver");
        con =DriverManager.getConnection(connectionUrl+database, userid, password);
        Statement smt = con.createStatement(); //Create Statement to interact
        ResultSet r = smt.executeQuery("select * from ncr where(ncr_id='" + q + "');");
        while (r.next()) {
        	ncr_id = r.getString("ncr_id");
         
        }
        con.close();
   } catch (Exception e) {
        e.printStackTrace();
   }
%>
<%-- Name:<%out.print(id);%> --%>
<input style="visibility: hidden;" class="input100" type="text" name="id" placeholder="Id" value="<%out.print(ncr_id);%>">
</body>
</html>