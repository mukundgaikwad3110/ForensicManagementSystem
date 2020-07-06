<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    
 <%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "forensic";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Suspects FIR Table</title>

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

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>
<body>
<% 
String name=(String)session.getAttribute("sessname"); 
 String emp_id=(String)session.getAttribute("id"); 

/* out.print("Hello User: Your name and id is: '"+name+"','"+emp_id+"';"); */ 
%> 
<!-- container section start -->
  <section class="wrapper" class="">
    
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               <h1><center>Suspects FIR Table</center></h1>
              </header>
<br>
 <center>

              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                      <th><i class="fas fa-id-card"></i>ID</th>
                      <th><i class="icon_profile"></i>FIR No</th>
                      
                      <th><i class='fas fa-user-friends'></i>First Name</th>
                      <th><i class='fas fa-user-friends'></i>Middle Name</th>
                      <th><i class='fas fa-user-friends'></i>Last Name</th>
                      
                      <th><i class="icon_calendar"></i>Address</th>
                     
                      <th><i class="icon_calendar"></i>Gender</th>
                      <th><i class='fas fa-user-friends'></i>Mobile Number</th>
                      <th><i class='fas fa-user-friends'></i>Action</th>
                      
                      
                  </tr>
  <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from suspects where emp_id="+emp_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("firno") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("middlename") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("address") %></td>



<td><%=resultSet.getString("gender") %></td>

<td><%=resultSet.getString("mobno") %></td>
 <td>
      <div class="btn-group">
       <a href="ViewSuspects.jsp?id=<%=resultSet.getInt(1)%> " button class="btn btn-info" target="">View</button></i></a>
      </div>
 </td>
  
 
 
            
  
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

  
                </tbody>
              </table>
            </center>
            </section>
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          Designed by <a href="https://cravitaindia.com/">Cravita Technologies</a>
        </div>
    </div>
  </section>
  <!-- container section end -->
  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nicescroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>


</body>
</html>