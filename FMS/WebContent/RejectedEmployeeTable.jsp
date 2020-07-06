<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Basic Table | Creative - Bootstrap 3 Responsive Admin Template</title>

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
               <h1><center>Rejected Users</center></h1>
              </header>
<br>
 <center>
<%
           try
            {
        		Class.forName("com.mysql.jdbc.Driver");
        		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");
        		Statement stmt=con.createStatement();
        		ResultSet rs=stmt.executeQuery("select * from rejectlist1;");
        		%>
         
              <table class="table table-striped">
        		<thead class"thead-dark">
                <tbody>
                  <tr>
                      <th><i class="fas fa-id-card"></i> &nbsp;Register ID</th>
                      <th><i class="icon_profile"></i> &nbsp; First Name</th>
                      <th><i class='icon_ribbon'></i> &nbsp; Designation</th>
                      <th><i class='icon_building'></i> &nbsp; Department</th>
                      <th><i class="icon_calendar"></i>&nbsp;Date</th>
                    <th><i class="icon_cogs"></i>&nbsp; Action</th>
                   </tr>
                   </tb
                   ody>
                 	<% 
        		while(rs.next())
                {
            %>            <tbody>
            
            <tr>
            	 <td><%=rs.getString("reg_id") %></td>
                <td><%=rs.getString("f_name") %></td>
                <td><%=rs.getString("designation") %></td>
                <td><%=rs.getString("department") %></td>
                <td><%=rs.getString("reg_date") %></td>
                 <td>
                      <div class="btn-group">
                       <a href="ViewRejectedEmployee.jsp?reg_id=<%=rs.getInt(1)%> "button class="btn btn-success" target="">View</button></i></a>
                      </div>
                    </td>
            </tr>
            <%}%>
           </tbody>              
              </table>
              <br>
                <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    %>
              
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
      Designed by <a href="https://bootstrapmade.com/">Cravita Technologies</a>
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