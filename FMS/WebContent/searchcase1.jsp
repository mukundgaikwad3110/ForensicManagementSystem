<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    
 <%
String caseType = request.getParameter("typeofcase");
 
 String fieldType = request.getParameter("fieldtype");
 
 String value = request.getParameter("value");
 
 
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

  <title>Cases Found</title>

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
<!-- container section start -->
<%if(caseType.equals("FIR"))
{%>
  <section class="wrapper" class="">
    
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               <h1><center>First Information Report</center></h1>
              </header>
<br>
 <center>

              <table class="table table-striped table-advance table-hover">
                <tbody>
                
                  <tr>
                      <th><i class="fas fa-id-card"></i>FIR No.</th>
                      
                      <th><i class='fas fa-user-circle'></i> District</th>
                      <th><i class='fas fa-user-friends'></i>Act</th>
                      <th><i class="icon_calendar"></i>Section</th>
                      <th><i class="icon_calendar"></i>Year</th>
                      <th><i class="icon_calendar"></i>Day</th>
                      <th><i class="icon_calendar"></i>Date</th>
                      <th><i class="icon_calendar"></i>Entry No.</th>
                      
                      <th><i class="icon_calendar"></i>Name Of Officer</th>
                      
                      
                       <th><i class="icon_cogs"></i>Action</th> 
                  </tr>
  <%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=");
statement=connection.createStatement();
String sql=null;

if(fieldType.equals("ByAct"))
{
	System.out.println("1");
	sql ="select * from forensic.fir where act='"+value+"'";
}
else if(fieldType.equals("ByNo"))
{
	System.out.println("2");
	sql ="select * from forensic.fir where firno="+value;
}
else if(fieldType.equals("BySection"))
{
	System.out.println("2");
	sql ="select * from forensic.fir where section= '"+value+"' or section1='"+value+"'";
}
else if(fieldType.equals("ByPoliceStation"))
{
	System.out.println("3");
	sql ="select * from forensic.fir where policeStation='"+value+"'";
}
else if(fieldType.equals("ByComplainantName"))
{
	System.out.println("4");
	sql ="select * from forensic.fir where complainantname='"+value+"'";
}
else if(fieldType.equals("ByComplaint"))
{
	out.print("<html><body><script>alert('Complaint for fir is not available'); </script><body><html>");
}
resultSet = statement.executeQuery(sql);
 /* if (!resultSet.next() ) {
	out.print("<html><body><script>alert('Data Not Available');window.history.back();  </script><body><html>");
}   */
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("firno") %></td>

<td><%=resultSet.getString("district") %></td>
<td><%=resultSet.getString("act") %></td>
<td><%=resultSet.getString("section") %></td>
<td><%=resultSet.getString("year") %></td>
<td><%=resultSet.getString("day") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("entryno") %></td>

<td><%=resultSet.getString("nameofio") %></td>


<td>
                      <div class="btn-group">
                       <a href="ViewFIRAdmin.jsp?id=<%=resultSet.getString("id")%> "button class="btn btn-success">View</button></i></a>
                      </div>
                    </td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
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
<%      
    if(caseType.equals("NCR"))
	
    { %>
      <section class="wrapper" class="">
    
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               <h1><center>Non-Cognizable Report</center></h1>
              </header>
<br>
 <center>

              <table class="table table-striped table-advance table-hover">
                <tbody>
                
     <tr>
                      <th><i class="fas fa-id-card"></i>NCR Id</th>
                      <th><i class="icon_profile"></i>NCR No</th>
                      <th><i class='fas fa-user-friends'></i>Police Station</th>
                      <th>Acts</th>
                          <th>section</th>
                      <th><i class="icon_profile"></i>Complaint</th>
                      <th>Complainant</th>
                      <th><i class="icon_cogs"></i>Action</th>
                  </tr>
   <%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");
statement=connection.createStatement();
String sql1=null;

if(fieldType.equals("ByAct"))
{
	System.out.println("1");
	sql1 ="SELECT * FROM forensic.ncr INNER JOIN permanent_emp on permanent_emp.emp_id=ncr.emp_id WHERE acts='"+value+"'";
}
else if(fieldType.equals("ByNo"))
{
	System.out.println("2");
	sql1 ="SELECT * FROM forensic.ncr INNER JOIN permanent_emp on permanent_emp.emp_id=ncr.emp_id WHERE ncrno='"+value+"'";
}
else if(fieldType.equals("BySection"))
{
	System.out.println("2");
	sql1 ="SELECT * FROM ncr INNER JOIN permanent_emp on permanent_emp.emp_id=ncr.emp_id WHERE section='"+value+"'";
}
else if(fieldType.equals("ByPoliceStation"))
{
	System.out.println("3");
	sql1 ="SELECT * FROM ncr INNER JOIN permanent_emp on permanent_emp.emp_id=ncr.emp_id WHERE policestation='"+value+"'";
}
else if(fieldType.equals("ByComplaint"))
{
	System.out.println("4");
	sql1 ="SELECT * FROM ncr INNER JOIN permanent_emp on permanent_emp.emp_id=ncr.emp_id WHERE complaint='"+value+"'";
}
else if(fieldType.equals("ByComplainantName"))
{
	System.out.println("5");
	sql1 ="SELECT * FROM ncr INNER JOIN permanent_emp on permanent_emp.emp_id=ncr.emp_id WHERE nameofcomplainant='"+value+"'";
}

resultSet = statement.executeQuery(sql1);
 /* if (!resultSet.next() ) {
	out.print("<html><body><script>alert('No Match Found');window.history.back();  </script><body><html>");
}  */ 
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("ncr_id") %></td>
<td><%=resultSet.getString("ncrno") %></td>
<td><%=resultSet.getString("policestation") %></td>
<td><%=resultSet.getString("acts") %></td>
<td><%=resultSet.getString("section") %></td>
<td><%=resultSet.getString("complaint") %></td>
<td><%=resultSet.getString("nameofcomplainant") %></td>
<td>
                      <div class="btn-group">
                       <a href="ViewNCRAdmin.jsp?ncr_id=<%=resultSet.getString("ncr_id")%> "button class="btn btn-success">View</button></i></a>
                      </div>
                    </td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
	System.out.println(e);
}
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
   <!--  <div class="text-right">
      <div class="credits">
          
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
         
          Designed by <a href="https://bootstrapmade.com/">Cravita Technologies</a>
        </div>
    </div> -->
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