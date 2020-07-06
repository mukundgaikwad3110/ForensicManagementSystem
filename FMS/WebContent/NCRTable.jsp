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
<!-- container section start -->
  <section class="wrapper" class="">
    
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               <h1><center>Non-Cognizible Table</center></h1>
              </header>
<br>
 <center>

              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                      <th><i class="fas fa-id-card"></i>NCR Id</th>
                      <th><i class="icon_profile"></i>Date</th>
                      <th><i class='fas fa-user-circle'></i> NCR No</th>
                      <th><i class='fas fa-user-friends'></i>Police Station</th>
                      <th><i class="icon_calendar"></i>Acts</th>
                      <th><i class="icon_calendar"></i>Section</th>
                      <th><i class="icon_calendar"></i>I.R.A.P.S.Date</th>
                      <th><i class="icon_calendar"></i>Time</th>
                      <th><i class="icon_calendar"></i>Name Of Complainant</th>
                      <th><i class="icon_calendar"></i>Name Of Witness</th>
                      <th><i class="icon_calendar"></i>Complaint</th>
                       <th><i class="fas fa-id-card"></i>Registered By Emp_Id</th>
                      <th><i class="icon_cogs"></i>Action</th> 
                  </tr>
  <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ncr";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("ncr_id") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("ncrno") %></td>
<td><%=resultSet.getString("policestation") %></td>
<td><%=resultSet.getString("acts") %></td>
<td><%=resultSet.getString("section") %></td>
<td><%=resultSet.getString("date1") %></td>
<td><%=resultSet.getString("time") %></td>
<td><%=resultSet.getString("nameofcomplainant") %></td>
<td><%=resultSet.getString("nameofwitness") %></td>
<td><%=resultSet.getString("complaint") %></td>
<td><%=resultSet.getString("emp_id") %></td>
<td>
      <div class="btn-group">
       <a href="ViewNCR.jsp?ncr_id=<%=resultSet.getInt(2)%> " button class="btn btn-info" target="">View</button></i></a>
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