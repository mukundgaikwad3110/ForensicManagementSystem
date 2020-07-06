<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
 
 String ncrno=request.getParameter("ncrno");

 
 
 
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(Database,UserName,Password);
String query="select * from postmortem where ncrno=" +ncrno; 

statement=connection.createStatement();
resultSet=statement.executeQuery(query);

out.println(resultSet);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

%>


<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>NCR Table</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
</head> 
<body>
 <section class="wrapper" style="oberflow:x-hidden;"> 
 <div clas="form-group">
 <div class="row"><center><h1>All Reports</h1></center>
 	    
         </div></div>
         <hr>
        <form action="">
	      <center>
			     <a type="submit" value="add_guest" name="submit" class=" btn btn-info btn-md"  href="NCRReport.jsp?ncrno=<%=request.getParameter("ncrno")%>">NCR Report  </a>	
			     <a type="submit" value="add_guest" name="submit" class=" btn btn-danger btn-md"  href="PostMortemReport.jsp?ncrno=<%=request.getParameter("ncrno")%>"> PostMortem Report </a>
			     <a type="submit" value="add_guest" name="submit" class=" btn btn-primary btn-md"  href="BloodTestReport.jsp?ncrno=<%=request.getParameter("ncrno")%>">Blood Report </a>
          </center>

         
        </form>
            <!--main content end-->
    <div class="text-right">
      <div class="credits">
          Designed by <a href="https://bootstrapmade.com/">Cravita Technologies</a>
        </div>
    </div>
  </section>
  
  <!-- container section end -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="js/scripts.js"></script>
</body>
</html>