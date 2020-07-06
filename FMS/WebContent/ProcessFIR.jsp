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
String username=request.getParameter("username");
String id=request.getParameter("id");
String state=request.getParameter("state");
String act=request.getParameter("act");
String district=request.getParameter("district");
String section=request.getParameter("section");
String policestation=request.getParameter("policestation");
String act1=request.getParameter("act1");
String firno=request.getParameter("firno");
String section1=request.getParameter("section1");
String year=request.getParameter("year");
String otheractsection=request.getParameter("otheractandsection");
String date=request.getParameter("date");
String day=request.getParameter("day");
String datefrom=request.getParameter("datefrom");
String timefrom=request.getParameter("timefrom");
String dateto=request.getParameter("dateto");
String timeto=request.getParameter("timeto");
String irapsdate=request.getParameter("irapsdate");
String irapstime=request.getParameter("irapstime");
String entryno=request.getParameter("entryno");
String gdrdate=request.getParameter("gdrdate");

String gdrtime=request.getParameter("gdrtime");
String toi=request.getParameter("toi");
String writtenoral=request.getParameter("writtenoral");
String dadfps=request.getParameter("dadfps");
String cbopnameno=request.getParameter("cbopnameno");
String aoname=request.getParameter("aoname");
String noifany=request.getParameter("noifany");
String ward=request.getParameter("ward");
String nameofroad=request.getParameter("nameofroad");
String nip=request.getParameter("nip");
String village=request.getParameter("village");
String post=request.getParameter("post");
String state1=request.getParameter("country1");
String district1=request.getParameter("district1");
String city1=request.getParameter("city1");
String state2=request.getParameter("state2");
String district2=request.getParameter("district2");
String city2=request.getParameter("city2");
String complainantname=request.getParameter("complainantname");
String fatherhusbandname=request.getParameter("fatherhusbandname");

String birthdate=request.getParameter("birthdate");
String age=request.getParameter("age");
String phoneno=request.getParameter("phoneno");
String passportno=request.getParameter("passportno");
String dateofissue=request.getParameter("dateofissue");
String placeofissue=request.getParameter("placeofissue");
String occupation=request.getParameter("occupation");
String religion=request.getParameter("religion");
String cast=request.getParameter("cast");
String subcast=request.getParameter("subcast");
String address=request.getParameter("address");
String ward1=request.getParameter("ward1");
String housenameno=request.getParameter("housenameno1");
String panno=request.getParameter("panno");
String votercardno=request.getParameter("votercardno");
String road=request.getParameter("road");
String nip1=request.getParameter("nip1");
String village1=request.getParameter("village1");
String post1=request.getParameter("post1");
String policestation1=request.getParameter("policestation1");

String state3=request.getParameter("state3");
String district3=request.getParameter("district3");
String city3=request.getParameter("city3");
String nationality=request.getParameter("nationality");
String presentaddress=request.getParameter("presentaddress");
String perticulars=request.getParameter("perticulars");
String totalvalues=request.getParameter("totalvalues");
String recoveredproperties=request.getParameter("recoveredproperties");
String unnaturaldeathcaseno=request.getParameter("unnaturaldeathcaseno");
String firbreif=request.getParameter("firbrief");
String nameofio=request.getParameter("nameofio");
String rank=request.getParameter("rank");

String no=request.getParameter("no");
String refusedinvestigation=request.getParameter("refusedinvestigation");
String transferredto=request.getParameter("transferredto");
String state4=request.getParameter("state4");
String district4=request.getParameter("district4");
String signthumbofcomplainant=request.getParameter("signthumbofcomplainant");
String name1=request.getParameter("name");
String rank1=request.getParameter("rank1");
String postingcodenoofio=request.getParameter("postingcodenoofio");
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(Database,UserName,Password);
String query="select * from fir where firno=" +firno; 

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
</head> 
<body>
 <section class="wrapper" style="oberflow:x-hidden;"> 
 <div clas="form-group">
 <div class="row"><center>	
     <a type="submit" value="add_guest" name="submit" class=" btn btn-success btn-md"  href="ViewFIR.jsp?id=<%=request.getParameter("id")%>"> View Info</a>
     <a type="submit" value="add_guest" name="submit" class=" btn btn-primary btn-md"  href="MyGuestFIR.jsp?firno=<%=request.getParameter("firno")%>"> My Guest</a>    
         </div></div>
         <hr>
        <form action="AddGuestFIR.jsp?
	        &id=<%=request.getParameter("id") %>
	        &state=<%=request.getParameter("state") %>
	        
	        &act=<%=request.getParameter("act") %>
	        &district=<%=request.getParameter("district") %>
	        &section=<%=request.getParameter("section") %>
	        &policestation=<%=request.getParameter("policestation") %>
	        &act1=<%=request.getParameter("act1") %>
	        &firno=<%=request.getParameter("firno") %>
	        &section1=<%=request.getParameter("section1") %>
	        &year=<%=request.getParameter("year") %>
	        &otheractsection=<%=request.getParameter("otheractsection") %>
	        &date=<%=request.getParameter("date") %>
	        &day=<%=request.getParameter("day") %>
	        &datefrom=<%=request.getParameter("datefrom") %>
	        &timefrom=<%=request.getParameter("timefrom") %>
	        &dateto=<%=request.getParameter("dateto") %>
	        &timeto=<%=request.getParameter("timeto") %>
	        &irapsdate=<%=request.getParameter("irapsdate") %>
	        &irapstime=<%=request.getParameter("irapstime") %>
	        &entryno=<%=request.getParameter("entryno") %>
	        &gdrdate=<%=request.getParameter("gdrdate") %>
	        &gdrtime=<%=request.getParameter("gdrtime") %>
	        &toi=<%=request.getParameter("toi") %>
	        &writtenoral=<%=request.getParameter("writtenoral") %>
	        &dadfps=<%=request.getParameter("dadfps") %>
	        &cbopnameno=<%=request.getParameter("cbopnameno") %>
	        &aoname=<%=request.getParameter("aoname") %>
	        &noifany=<%=request.getParameter("noifany") %>
	        &ward=<%=request.getParameter("ward") %>
	        &nameofroad=<%=request.getParameter("nameofroad") %>
	        &nip=<%=request.getParameter("nip") %>
	        &village=<%=request.getParameter("village") %>
	        &post=<%=request.getParameter("post") %>
	        &state1=<%=request.getParameter("state1") %>
	        &district1=<%=request.getParameter("district1") %>
	        &city1=<%=request.getParameter("city1") %>
	        &state2=<%=request.getParameter("state2") %>
	        &district2=<%=request.getParameter("district2") %>
	        &city2=<%=request.getParameter("city2") %>
	        &complainantname=<%=request.getParameter("complainantname") %>
	        &fatherhusbandname=<%=request.getParameter("fatherhusbandname") %>
	        &birthdate=<%=request.getParameter("birthdate") %>
	        &age=<%=request.getParameter("age") %>
	        &phoneno=<%=request.getParameter("phoneno") %>
        
	         &passportno=<%=request.getParameter("passportno") %>
	         &dateofissue=<%=request.getParameter("dateofissue") %>
	         &placeofissue=<%=request.getParameter("placeofissue") %>
	         &occupation=<%=request.getParameter("occupation") %>
	         &religion=<%=request.getParameter("religion") %>
	         &cast=<%=request.getParameter("cast") %>
	         &subcast=<%=request.getParameter("subcast") %>
	         &address=<%=request.getParameter("address") %>
	         &ward1=<%=request.getParameter("ward1") %>
	         &housenameno=<%=request.getParameter("housenameno") %>
	         &panno=<%=request.getParameter("panno") %>
	         &votercardno=<%=request.getParameter("votercardno") %>
	         &road=<%=request.getParameter("road") %>
	         &nip1=<%=request.getParameter("nip1") %>
	         
	         &village1=<%=request.getParameter("village1") %>
	         &post1=<%=request.getParameter("post1") %>
	         &policestation1=<%=request.getParameter("policestation1") %>
	         &state3=<%=request.getParameter("state3") %>
	         &district3=<%=request.getParameter("district3") %>
	         &city3=<%=request.getParameter("city3") %>
	       &nationality=<%=request.getParameter("nationality") %>
	       &presentaddress=<%=request.getParameter("presentaddress") %>
	       &perticulars=<%=request.getParameter("perticulars") %>
	       &totalvalues=<%=request.getParameter("totalvalues") %>
	       &recoveredproperties=<%=request.getParameter("recoveredproperties") %>
	       &unnaturaldeathcaseno=<%=request.getParameter("unnaturaldeathcaseno") %>
	       &firbreif=<%=request.getParameter("firbreif") %>
	       &nameofio=<%=request.getParameter("nameofio") %>
	       &rank=<%=request.getParameter("rank") %>
	       &no=<%=request.getParameter("no") %>
	       &refusedinvestigation=<%=request.getParameter("refusedinvestigation") %>
	       &transferredto=<%=request.getParameter("transferredto") %>
	       &state4=<%=request.getParameter("state4") %>
	       &district4=<%=request.getParameter("district4") %>
	       &signthumbofcomplainant=<%=request.getParameter("signthumbofcomplainant") %>
	       &name=<%=request.getParameter("name") %>
	       &rank1=<%=request.getParameter("rank1") %>
	       &postingcodenoofio=<%=request.getParameter("postingcodenoofio") %>
	     
         
        
        ">
         	  
          
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               <h1><center>Add Guest</center></h1>
              </header>
              <div class="panel-body">
<br>
 <center>
 <input type="hidden" name="id" value=<%=request.getParameter("id")%>>
 <input type="hidden" name="state" value=<%=request.getParameter("state") %>>
 <input type="hidden" name="act" value=<%=request.getParameter("act")%>>
 <input type="hidden" name="district" value=<%=request.getParameter("district")%>>
 <input type="hidden" name="section" value=<%=request.getParameter("section")%>>
 <input type="hidden" name="policestation" value=<%=request.getParameter("policestation")%>>
 <input type="hidden" name="act1" value=<%=request.getParameter("act1")%>>
 <input type="hidden" name="firno" value=<%=request.getParameter("firno")%>>
 <input type="hidden" name="section1" value=<%=request.getParameter("section1")%>>
 <input type="hidden" name="year" value=<%=request.getParameter("year")%>>
 <input type="hidden" name="otheractsection" value=<%=request.getParameter("otheractsection")%>>
 <input type="hidden" name="date" value=<%=request.getParameter("date")%>>
 <input type="hidden" name="day" value=<%=request.getParameter("day")%>>
 <input type="hidden" name="datefrom" value=<%=request.getParameter("datefrom")%>>
 <input type="hidden" name="timefrom" value=<%=request.getParameter("timefrom")%>>
 <input type="hidden" name="dateto" value=<%=request.getParameter("dateto")%>>
 <input type="hidden" name="timeto" value=<%=request.getParameter("timeto")%>>
 <input type="hidden" name="irapsdate" value=<%=request.getParameter("irapsdate")%>>
 <input type="hidden" name="irapstime" value=<%=request.getParameter("irapstime")%>>
 <input type="hidden" name="entryno" value=<%=request.getParameter("entryno")%>>
 <input type="hidden" name="gdrdate" value=<%=request.getParameter("gdrdate")%>>
 <input type="hidden" name="gdrtime" value=<%=request.getParameter("gdrtime")%>>
 <input type="hidden" name="toi" value=<%=request.getParameter("toi")%>>
 <input type="hidden" name="writtenoral" value=<%=request.getParameter("writtenoral")%>>
 <input type="hidden" name="dadfps" value=<%=request.getParameter("dadfps")%>>
 <input type="hidden" name="cbopnameno" value=<%=request.getParameter("cbopnameno")%>>
 <input type="hidden" name="aoname" value=<%=request.getParameter("aoname")%>>
 <input type="hidden" name="noifany" value=<%=request.getParameter("noifany")%>>
 <input type="hidden" name="ward" value=<%=request.getParameter("ward")%>>
 <input type="hidden" name="nameofroad" value=<%=request.getParameter("nameofroad")%>>
 <input type="hidden" name="nip" value=<%=request.getParameter("nip")%>>
 <input type="hidden" name="village" value=<%=request.getParameter("village")%>>
 <input type="hidden" name="post" value=<%=request.getParameter("post")%>>
 <input type="hidden" name="state1" value=<%=request.getParameter("state1")%>>
 <input type="hidden" name="district1" value=<%=request.getParameter("district1")%>>
 <input type="hidden" name="city1" value=<%=request.getParameter("city1")%>>
 <input type="hidden" name="state2" value=<%=request.getParameter("state2")%>>
 <input type="hidden" name="district2" value=<%=request.getParameter("district2")%>>
 <input type="hidden" name="city2" value=<%=request.getParameter("city2")%>>
 <input type="hidden" name="complainantname" value=<%=request.getParameter("complainantname")%>>
 <input type="hidden" name="fatherhusbandname" value=<%=request.getParameter("fatherhusbandname")%>>
 <input type="hidden" name="birthdate" value=<%=request.getParameter("birthdate")%>>
 <input type="hidden" name="age" value=<%=request.getParameter("age")%>>
 <input type="hidden" name="phoneno" value=<%=request.getParameter("phoneno")%>>
 <input type="hidden" name="passportno" value=<%=request.getParameter("passportno")%>>
 <input type="hidden" name="dateofissue" value=<%=request.getParameter("dateofissue")%>>
 <input type="hidden" name="placeofissue" value=<%=request.getParameter("placeofissue")%>>
 <input type="hidden" name="occupation" value=<%=request.getParameter("occupation")%>>
 <input type="hidden" name="religion" value=<%=request.getParameter("religion")%>>
 <input type="hidden" name="cast" value=<%=request.getParameter("cast")%>>
 <input type="hidden" name="subcast" value=<%=request.getParameter("subcast")%>>
 <input type="hidden" name="address" value=<%=request.getParameter("address")%>>
 <input type="hidden" name="firno" value=<%=request.getParameter("firno")%>>
 <input type="hidden" name="ward1" value=<%=request.getParameter("ward1")%>>
 <input type="hidden" name="housenameno" value=<%=request.getParameter("housenameno")%>>
 <input type="hidden" name="panno" value=<%=request.getParameter("panno")%>>
 <input type="hidden" name="votercardno" value=<%=request.getParameter("votercardno")%>>
 <input type="hidden" name="road" value=<%=request.getParameter("road")%>>
 <input type="hidden" name="nip1" value=<%=request.getParameter("nip1")%>>
 <input type="hidden" name="village1" value=<%=request.getParameter("village1")%>>
 <input type="hidden" name="post1" value=<%=request.getParameter("post1")%>>
 <input type="hidden" name="policestation1" value=<%=request.getParameter("policestation1")%>>
 <input type="hidden" name="state3" value=<%=request.getParameter("state3")%>>
 <input type="hidden" name="district3" value=<%=request.getParameter("district3")%>>
 <input type="hidden" name="city3" value=<%=request.getParameter("city3")%>>
 <input type="hidden" name="nationality" value=<%=request.getParameter("nationality")%>>
 <input type="hidden" name="presentaddress" value=<%=request.getParameter("presentaddress")%>>
 <input type="hidden" name="perticulars" value=<%=request.getParameter("perticulars")%>>
 <input type="hidden" name="totalvalues" value=<%=request.getParameter("totalvalues")%>>
 <input type="hidden" name="recoveredproperties" value=<%=request.getParameter("recoveredproperties")%>>
 <input type="hidden" name="unnaturaldeathcaseno" value=<%=request.getParameter("unnaturaldeathcaseno")%>>
 <input type="hidden" name="firbreif" value=<%=request.getParameter("firbreif")%>>
 <input type="hidden" name="nameofio" value=<%=request.getParameter("nameofio")%>>
 <input type="hidden" name="rank" value=<%=request.getParameter("rank")%>>
 <input type="hidden" name="no" value=<%=request.getParameter("no")%>>
 <input type="hidden" name="refusedinvestigation" value=<%=request.getParameter("refusedinvestigation")%>>
 <input type="hidden" name="transferredto" value=<%=request.getParameter("transferredto")%>>
 <input type="hidden" name="state4" value=<%=request.getParameter("state4")%>>
 <input type="hidden" name="district4" value=<%=request.getParameter("district4")%>>
 <input type="hidden" name="signthumbofcomplainant" value=<%=request.getParameter("signthumbofcomplainant")%>>
 <input type="hidden" name="name" value=<%=request.getParameter("name")%>>
 <input type="hidden" name="rank1" value=<%=request.getParameter("rank1")%>>
 <input type="hidden" name="postingcodenoofio" value=<%=request.getParameter("postingcodenoofio")%>>
 	
 
 
     <table class="table table-striped table-advance table-hover">
                <tbody>
                
                  <tr><th><input type="hidden" name="firno" value=<%=request.getParameter("firno")%>></th>
                       
                   
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

connection = DriverManager.getConnection(Database,UserName,Password);
statement=connection.createStatement();
//String case_id=request.getParameter("ncrno");
String sql ="SELECT * FROM permanent_emp where designation='Guest'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><input type="checkbox" value=<%=resultSet.getInt("emp_id")%> name="guestid"></td>
<td><%=resultSet.getInt("emp_id") %></td>
<td><%=resultSet.getString("f_name") %></td>
<td><%=resultSet.getString("department") %></td>
<td><%=resultSet.getString("email") %></td>  
</tr>
<%
}

} catch (Exception e) {
response.sendRedirect("ProcessFIR.jsp");
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