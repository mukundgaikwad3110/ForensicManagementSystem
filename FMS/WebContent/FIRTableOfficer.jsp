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

  <title>FIR Table</title>

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
               <h1><center>FIR Table</center></h1>
              </header>
<br>
 <center>

              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                      <th><i class="fas fa-id-card"></i>ID</th>
                      <th><i class="icon_profile"></i>FIR No</th>
                      
                      <th><i class='fas fa-user-friends'></i>Police Station</th>
                      
                      <th><i class="icon_calendar"></i>Date</th>
                     
                      <th><i class="icon_calendar"></i> Complainant Name</th>
                      
                      <th><i class="icon_calendar"></i>Age</th>
                   <th><i class="icon_cogs"></i>Action</th> 
                   <th><i class="icon_cogs"></i>Evidence</th> 
            	   
            	   <th><i class="icon_cogs"></i>Add Suspects</th> 
            	  
                  </tr>
  <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from fir where emp_id="+emp_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>

<td style="display:none;"><%=resultSet.getString("state") %></td>
<td style="display:none;"><%=resultSet.getString("act") %></td>
<td style="display:none;"><%=resultSet.getString("district") %></td>
<td style="display:none;"><%=resultSet.getString("section") %></td>
<td style="display:none;"><%=resultSet.getString("act1") %></td>
<td style="display:none;"><%=resultSet.getString("section1") %></td>
<td style="display:none;"><%=resultSet.getString("year") %></td>
<td style="display:none;"><%=resultSet.getString("otheractsection") %></td>
<td style="display:none;"><%=resultSet.getString("day") %></td>
<td style="display:none;"><%=resultSet.getString("datefrom") %></td>
<td style="display:none;"><%=resultSet.getString("timefrom") %></td>
<td style="display:none;"><%=resultSet.getString("dateto") %></td>
<td style="display:none;"><%=resultSet.getString("timeto") %></td>
<td style="display:none;"><%=resultSet.getString("irapsdate") %></td>
<td style="display:none;"><%=resultSet.getString("irapstime") %></td>
<td style="display:none;"><%=resultSet.getString("entryno") %></td>
<td style="display:none;"><%=resultSet.getString("gdrdate") %></td>
<td style="display:none;"><%=resultSet.getString("gdrtime") %></td>
<td style="display:none;"><%=resultSet.getString("toi") %></td>
<td style="display:none;"><%=resultSet.getString("writtenoral") %></td>
<td style="display:none;"><%=resultSet.getString("dadfps") %></td>
<td style="display:none;"><%=resultSet.getString("cbopnameno") %></td>
<td style="display:none;"><%=resultSet.getString("aoname") %></td>
<td style="display:none;"><%=resultSet.getString("noifany") %></td>
<td style="display:none;"><%=resultSet.getString("ward") %></td>
<td style="display:none;"><%=resultSet.getString("nameofroad") %></td>
<td style="display:none;"><%=resultSet.getString("nip") %></td>
<td style="display:none;"><%=resultSet.getString("village") %></td>
<td style="display:none;"><%=resultSet.getString("post") %></td>
<td style="display:none;"><%=resultSet.getString("state1") %></td>
<td style="display:none;"><%=resultSet.getString("district1") %></td>
<td style="display:none;"><%=resultSet.getString("city1") %></td>
<td style="display:none;"><%=resultSet.getString("state2") %></td>
<td style="display:none;"><%=resultSet.getString("district2") %></td>
<td style="display:none;"><%=resultSet.getString("city2") %></td>
<td style="display:none;"><%=resultSet.getString("fatherhusbandname") %></td>
<td style="display:none;"><%=resultSet.getString("birthdate") %></td>
<td style="display:none;"><%=resultSet.getString("phoneno") %></td>
<td style="display:none;"><%=resultSet.getString("passportno") %></td>
<td style="display:none;"><%=resultSet.getString("dateofissue") %></td>
<td style="display:none;"><%=resultSet.getString("placeofissue") %></td>
<td style="display:none;"><%=resultSet.getString("occupation") %></td>
<td style="display:none;"><%=resultSet.getString("religion") %></td>
<td style="display:none;"><%=resultSet.getString("cast") %></td>
<td style="display:none;"><%=resultSet.getString("subcast") %></td>
<td style="display:none;"><%=resultSet.getString("address") %></td>
<td style="display:none;"><%=resultSet.getString("ward1") %></td>
<td style="display:none;"><%=resultSet.getString("housenameno") %></td>
<td style="display:none;"><%=resultSet.getString("panno") %></td>
<td style="display:none;"><%=resultSet.getString("votercardno") %></td>
<td style="display:none;"><%=resultSet.getString("road") %></td>
<td style="display:none;"><%=resultSet.getString("nip1") %></td>
<td style="display:none;"><%=resultSet.getString("village1") %></td>
<td style="display:none;"><%=resultSet.getString("post1") %></td>
<td style="display:none;"><%=resultSet.getString("policestation1") %></td>
<td style="display:none;"><%=resultSet.getString("state3") %></td>
<td style="display:none;"><%=resultSet.getString("district3") %></td>
<td style="display:none;"><%=resultSet.getString("city3") %></td>
<td style="display:none;"><%=resultSet.getString("nationality") %></td>
<td style="display:none;"><%=resultSet.getString("presentaddress") %></td>
<td style="display:none;"><%=resultSet.getString("perticulars") %></td>
<td style="display:none;"><%=resultSet.getString("totalvalues") %></td>
<td style="display:none;"><%=resultSet.getString("recoveredproperties") %></td>
<td style="display:none;"><%=resultSet.getString("unnaturaldeathcaseno") %></td>
<td style="display:none;"><%=resultSet.getString("firbreif") %></td>
<td style="display:none;"><%=resultSet.getString("nameofio") %></td>
<td style="display:none;"><%=resultSet.getString("rank") %></td>
<td style="display:none;"><%=resultSet.getString("no") %></td>
<td style="display:none;"><%=resultSet.getString("refusedinvestigation") %></td>
<td style="display:none;"><%=resultSet.getString("transferredto") %></td>
<td style="display:none;"><%=resultSet.getString("state4") %></td>
<td style="display:none;"><%=resultSet.getString("district4") %></td>
<td style="display:none;"><%=resultSet.getString("signthumbofcomplainant") %></td>
<td style="display:none;"><%=resultSet.getString("name") %></td>
<td style="display:none;"><%=resultSet.getString("rank1") %></td>
<td style="display:none;"><%=resultSet.getString("postingcodenoofio") %></td>


<td><%=resultSet.getString("firno") %></td>
<td><%=resultSet.getString("policestation") %></td>
<td><%=resultSet.getString("date") %></td>



<td><%=resultSet.getString("complainantname") %></td>

<td><%=resultSet.getString("age") %></td>
 <td>
    <div class="btn-group">
      <a href="ProcessFIR.jsp?
      &id=<%=resultSet.getInt(2)%>
      &state=<%=resultSet.getString(3)%> 
      &act=<%=resultSet.getString(4)%> 
      &district=<%=resultSet.getString(5)%> 
      &section=<%=resultSet.getString(6)%> 
      &policestation=<%=resultSet.getString(7)%> 
      &act1=<%=resultSet.getString(8)%> 
      
      &firno=<%=resultSet.getString(9)%> 
      &section1=<%=resultSet.getString(10)%> 
      &year=<%=resultSet.getString(11)%>       
      &otheractsection=<%=resultSet.getString(12)%> 
      
      &date=<%=resultSet.getString(13)%> 
      &day=<%=resultSet.getString(14)%> 
      &datefrom=<%=resultSet.getString(15)%> 
      &timefrom=<%=resultSet.getString(16)%> 
      &dateto=<%=resultSet.getString(17)%> 
      &timeto=<%=resultSet.getString(18)%> 
      
      &irapsdate=<%=resultSet.getString(19)%> 
      &irapstime=<%=resultSet.getString(20)%> 
      &entryno=<%=resultSet.getString(21)%>       
      &gdrdate=<%=resultSet.getString(22)%> 
      
      &gdrtime=<%=resultSet.getString(23)%> 
      &toi=<%=resultSet.getString(24)%> 
      &writtenoral=<%=resultSet.getString(25)%> 
      &dadfps=<%=resultSet.getString(26)%> 
      &cbopnameno=<%=resultSet.getString(27)%> 
      &aoname=<%=resultSet.getString(28)%> 
      
      &noifany=<%=resultSet.getString(29)%> 
      &ward=<%=resultSet.getString(30)%> 
      &nameofroad=<%=resultSet.getString(31)%>       
      &nip=<%=resultSet.getString(32)%> 
      
      &village=<%=resultSet.getString(33)%> 
      &post=<%=resultSet.getString(34)%> 
      &state1=<%=resultSet.getString(35)%> 
      &district1=<%=resultSet.getString(36)%> 
      &city1=<%=resultSet.getString(37)%> 
      &state2=<%=resultSet.getString(38)%> 
      
      &district2=<%=resultSet.getString(39)%> 
      &city2=<%=resultSet.getString(40)%> 
      &complainantname=<%=resultSet.getString(41)%>       
      &fatherhusbandname=<%=resultSet.getString(42)%> 
      
      &birthdate=<%=resultSet.getString(43)%> 
      &age=<%=resultSet.getString(44)%> 
      &phoneno=<%=resultSet.getString(45)%> 
      &passportno=<%=resultSet.getString(46)%> 
      &dateofissue=<%=resultSet.getString(47)%> 
      &placeofissue=<%=resultSet.getString(48)%> 
      
      &occupation=<%=resultSet.getString(49)%> 
      &religion=<%=resultSet.getString(50)%> 
      &cast=<%=resultSet.getString(51)%>       
      &subcast=<%=resultSet.getString(52)%> 
      
      &address=<%=resultSet.getString(53)%> 
      &ward1=<%=resultSet.getString(54)%> 
      &housenameno=<%=resultSet.getString(55)%> 
      &panno=<%=resultSet.getString(56)%> 
      &votercardno=<%=resultSet.getString(57)%> 
      &road=<%=resultSet.getString(58)%> 
      
      &nip1=<%=resultSet.getString(59)%> 
      &village1=<%=resultSet.getString(60)%> 
      &post1=<%=resultSet.getString(61)%>       
      &policestation1=<%=resultSet.getString(62)%> 
      
      
      &state3=<%=resultSet.getString(63)%> 
      &district3=<%=resultSet.getString(64)%> 
      &city3=<%=resultSet.getString(65)%> 
      &nationality=<%=resultSet.getString(66)%> 
      &presentaddress=<%=resultSet.getString(67)%> 
      &perticulars=<%=resultSet.getString(68)%> 
      
      &totalvalues=<%=resultSet.getString(69)%> 
      &recoveredproperties=<%=resultSet.getString(70)%> 
      &unnaturaldeathcaseno=<%=resultSet.getString(71)%>       
      &firbreif=<%=resultSet.getString(72)%> 
      
      
      &nameofio=<%=resultSet.getString(73)%> 
      &rank=<%=resultSet.getString(74)%> 
      &no=<%=resultSet.getString(75)%> 
      &refusedinvestigation=<%=resultSet.getString(76)%> 
      &transferredto=<%=resultSet.getString(77)%> 
      &state4=<%=resultSet.getString(78)%> 
      
      &district4=<%=resultSet.getString(79)%> 
      &signthumbofcomplainant=<%=resultSet.getString(80)%> 
      &name=<%=resultSet.getString(81)%>       
      &rank1=<%=resultSet.getString(82)%> 
      
      &postingcodenoofio=<%=resultSet.getString(83)%> 
     
     
      "button class="btn btn-primary target="">Add Guest</button></i></a>
    </div>
 </td>
 <td>
   <div class="btn-group">
     <a href="AddEvidenceFIR.jsp?id=<%=resultSet.getInt(2)%> "button class="btn btn-default" target="">Add Evidence</button></i></a>
  </div>
 </td>
  
 <td>
      <div class="btn-group">
       <a href="Suspects.jsp?id=<%=resultSet.getInt(2)%> "button class="btn btn-danger" target="">Suspects</button></i></a>
      </div>
 </td>
  <%-- <td>
      <div class="btn-group">
       <a href="MyGuestFIR.jsp?firno=<%=resultSet.getString("firno")%> "button class="btn btn-success" target="">My Guest</button></i></a>
      </div>
 </td>    --%>               
  
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