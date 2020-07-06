<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String case_id=request.getParameter("case_id");
String off_id=request.getParameter("off_id");
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
 <div class="row"><center>	
         </div></div>
         <hr>
        <form action="addlawyerncr.jsp">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               <h1><center>Add Lawyer</center></h1>
              </header>
              <div class="panel-body">
<br>
 <center>
     <table class="table table-striped table-advance table-hover">
                <tbody>
                	 <th><input type="hidden" name="case_id" value=<%=request.getParameter("case_id")%>></th>
     				 <th><i class="fas fa-id-card"></i> &nbsp;Lawyer ID</th>
                      <th><i class="icon_profile"></i> &nbsp; Full Name</th>
                      <th><i class="icon_calendar"></i> &nbsp; Bar Reg.Date</th>
                      <th>Lawyer Type</th>
                      <th>Email Id</th>
</tr>
                  
  <%
	try
    {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");
		Statement stmt=con.createStatement();

connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM lawyer";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
	<% 	String f=resultSet.getString("f_name");
        			String m=resultSet.getString("m_name");
        			String l=resultSet.getString("l_name");
            %>            <tbody>
            
            <tr><td><input type="checkbox" value=<%=resultSet.getInt("l_id")%> name="l_id"></td>
            	 <td><%=resultSet.getString("l_id") %></td>
                <td><%=f+" "+m+" "+l%></td>
                <td><%=resultSet.getString("bar_reg_date") %></td>
                <td><%=resultSet.getString("l_type") %></td>
                 <td><%=resultSet.getString("l_email") %></td>
               
             
<%
}

} catch (Exception e) {
response.sendRedirect("Process.jsp");
}


	%>  
                </tbody>
              </table>
               <button type="submit" value="add_guest" name="submit" class=" btn btn-info btn-md">Submit</button>
            </center>
            </section>
            </div>
          </div>
        </div>
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