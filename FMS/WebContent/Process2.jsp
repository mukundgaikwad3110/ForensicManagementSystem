<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String firNo=request.getParameter("firNo");
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
 <a type="submit" value="add_guest" name="submit" class=" btn btn-success btn-md"  href="viewguestinfofir.jsp?firNo=<%=request.getParameter("firNo")%>&off_id=<%=request.getParameter("emp_id")%>"> View Info</a>
     <a type="submit" value="add_guest" name="submit" class=" btn btn-primary btn-md"  href="myguest2.jsp?firNo=<%=request.getParameter("firNo")%>&off_id=<%=request.getParameter("emp_id")%>"> My Guest</a>    
             </div></div>
         <hr>
        <form action="addguest2.jsp">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               <h1><center>Add Guest</center></h1>
              </header>
              <div class="panel-body">
<br>
 <center>
     <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr><th><input type="hidden" name="ncr_no" value=<%=request.getParameter("firNo")%>></th>
                      <th><i class="fas fa-id-card">&nbsp</i>Guest Id</th>
                      <th><i class="icon_profile">&nbsp </i>Name</th>
                      <th>Department</th>
                      <th><i class="icon_profile">&nbsp </i>Mail Id</th>
                  </tr>
  <%
	try
    {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");
		Statement stmt=con.createStatement();
	
	HttpSession sessionOff = request.getSession(false);
	Object emp_id= sessionOff.getAttribute("emp_id");

connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="SELECT * FROM permanent_emp where designation='Guest'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><input type="checkbox" value=<%=resultSet.getInt("emp_id")%> name="guestid"></td>
<td><%=resultSet.getInt("emp_id") %></td>
<td><%=resultSet.getString("full_name") %></td>
<td><%=resultSet.getString("department") %></td>
<td><%=resultSet.getString("email") %></td>  
</tr>
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