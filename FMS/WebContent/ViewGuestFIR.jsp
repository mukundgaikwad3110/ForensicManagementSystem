<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*,java.text.*" %>
<%@ page import="java.io.*,java.util.Date"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>

<html>
<head>
< <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FIR</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
    
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
 <script type="text/javascript" src="js/myfile.js"></script>
<script type="text/javascript" src="js/myfile1.js"></script>  
<script type="text/javascript" src="js/myfile2.js"></script>  
<script type="text/javascript" src="js/myfile3.js"></script>  
<script type="text/javascript" src="js/myfile4.js"></script>  
<script type="text/javascript" src="js/age2.js"></script>
<script type="text/javascript" src="js/length.js"></script>
<script type="text/javascript" src="js/Religion.js"></script>
    <script type="text/javascript">
    <!--numeric value-->
function isInputNumber(evt){
    var ch=String.fromCharCode(evt.which);
    if(!(/[0-9]/.test(ch))){
      evt.preventDefault();
    }
  }
</script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> 
<script>
           $ (document).ready(function(){
                 $("#users").change(function(){
                     var value = $(this).val();
                     $.get("GetGuestId.jsp",{q:value},function(data){
                      $("#javaquery").html(data);
                     });
                 });
             });
</script> -->

</head>
<body>
<% 
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";
Connection conn=null;
ResultSet rs = null;
Statement st = null;
 PreparedStatement pstmt = null;
 String id=request.getParameter("id");
 String username=request.getParameter("username");

try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);
String query="select * from guest_fir where id=" +id; 

st=conn.createStatement();
rs=st.executeQuery(query);

if(rs.next()){

	%>

<center><h2 style="color: white;">First Information Report</h2></center>

    <div class="main">

        <div class="container">
            <div class="signup-content">
               <!--  <div class="signup-img" style="width: 500px;">
                    <img src="images/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div> -->
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form"  style="   padding-left: 100px;" action="Guest_FIR.jsp">
                        <!-- style="width:1117px;" -->
                        
                        
                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="State">State :</label>
                                <div class="form-select" style="width: 200px;">
                                     <select name="city" id="city" style="display: none;"></select>
                                    <%-- <select name="country" id="state" size="1" value="<%=rs.getString(3)%>" ></select> --%>
                                     <input  name="country" value="<%=rs.getString(4)%>" style="width: 200px;" required>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="District">District :</label>
                            <%-- <select name="state" id="district" size="1" style="width: 200px;" value="<%=rs.getString(5)%>" ></select> --%>
                            <input  name="state" value="<%=rs.getString(6)%>" style="width: 200px;" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-right: 13px;margin-left: 47px; margin-top: 27px;"></i></span>
                        </div>
                    </div>

<!-- ************************************************************************************** -->

                <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="act">Act :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input  name="act"  type="text"required  value="<%=rs.getString(5)%>"/>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="District">Section :</label>
                            <input type="text" name="section" style="width: 200px;" value="<%=rs.getString(7)%>" required>
                        </div>
                    </div>

<!-- ************************************************************************************** -->
                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="act1">Act :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input  name="act1"  type="text" value="<%=rs.getString(9)%>" required />
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="Section">Section :</label>
                            <input type="text" name="section1" style="width: 200px;" value="<%=rs.getString(11)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="otheractandsection">Other Acts and Sections :</label>
                            <input type="text" name="otheractandsection" style="width: 200px;" value="<%=rs.getString(13)%>" required>
                        </div>

                    </div>
          
<!-- ************************************************************************************** -->

                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="policestation">Police Station :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input  name="policestation"  type="text" value="<%=rs.getString(8)%>" required />
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="firno">FIR NO :</label>
                            <input type="text" name="firno" onkeypress="isInputNumber(event)" style="width: 200px;" value="<%=rs.getString(10)%>" required>
                        </div>
                    </div>

<!-- ************************************************************************************** -->

                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="year">Year:</label>
                                <div class="form-select" style="width: 200px;">
                                    <input  name="year" onkeypress="isInputNumber(event)" type="text" value="<%=rs.getString(12)%>" required />
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="date">Date :</label>
                            <input type="date" name="date" onkeypress="isInputNumber(event)" style="width: 200px;" value="<%=rs.getString(14)%>" required>
                        </div>
                    </div>
<hr style="width: 1100px;">

<!-- ************************************************************************************** -->

                    <br><label >Occurance Of Offence:</label>
                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="day">Day:</label>
                                <div class="form-select" style="width: 200px;">
                                    <%-- <select name="day" >
                                      <option value="<%=rs.getString(14)%>"></option>
                                          <!-- <option value="Sunday">Sunday</option>
                                        <option value="Monday">Monday</option>
                                        <option value="Tuesday">Tuesday</option>
                                        <option value="Wednesday">Wednesday</option>
                                        <option value="Thursday">Thursday</option>
                                        <option value="Friday">Friday</option>
                                        <option value="Saturday">Saturday</option> -->
                                    </select> --%>
                                    <input   name="day" value="<%=rs.getString(15)%>" style="width: 200px;" required>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="datefrom">Date From:</label>
                            <input name="datefrom" style="width: 200px;" value="<%=rs.getString(16)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="timefrom">Time:</label>
                           
                                <input name="timefrom" style="width: 200px;" value="<%=rs.getString(17)%>" required>
            
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down"
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>


                    </div>

<!-- ************************************************************************************** -->

                    <div class="form-row">
                        <div class="form-group" >
                            <label for="dateto">Date To:</label>
                            <input type="date" name="dateto" style="width: 200px;" value="<%=rs.getString(18)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="timeto">Time:</label>
                            <input  name="timeto" style="width: 200px;" value="<%=rs.getString(19)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                    </div>
    <hr style="width: 1100px;">
<!-- ************************************************************************************** -->
                    <br><label >Information Recieved at Police Station:</label>
                      <div class="form-row">

                        <div class="form-group" >
                            <label for="irapsdate">Date To:</label>
                            <input type="date" name="irapsdate" style="width: 200px;" value="<%=rs.getString(20)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="irapstime">Time:</label>
                            <input name="irapstime" style="width: 200px;" value="<%=rs.getString(21)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                    </div>
<hr style="width: 1100px;">

<!-- ************************************************************************************** -->

                    <br><label >General Diary Reference:</label>
                      <div class="form-row">

                         <div class="form-group" >
                            <label for="entryno">Entry NO :</label>
                            <input type="text" name="entryno" onkeypress="isInputNumber(event)" style="width: 200px;" value="<%=rs.getString(22)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="gdrdate">Date To:</label>
                            <input type="date" name="gdrdate" style="width: 200px;" value="<%=rs.getString(23)%>"  required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="gdrtime">Time:</label>
                           <input name="gdrtime" style="width: 200px;" value="<%=rs.getString(24)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                    </div>
<hr style="width: 1100px;">

<!-- ************************************************************************************** -->
                    
<br>
                      <div class="form-row">

                        <div class="form-group" >
                            <label for="irapsdate">Type OF Information:</label>
                            <input type="text" name="toi" style="width: 200px;" value="<%=rs.getString(25)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="writtenoral">Written/Oral:</label>
                             <input name="writtenoral" style="width: 200px;" value="<%=rs.getString(26)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                    </div>
<hr style="width: 1100px;">

<!-- ************************************************************************************** -->

                    <br><label >Place OF Occurance:</label>
                      <div class="form-row">

                         <div class="form-group" >
                            <label for="dadfps">Direction and Distance From P.S :</label>
                            <input type="text" name="dadfps" style="width: 200px;" value="<%=rs.getString(27)%>"  required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="cbopnameno">Chouki/Beat/O.P. Name and No.:</label>
                            <input type="text" name="cbopnameno" style="width: 200px;" value="<%=rs.getString(28)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="aoname">Address Of Occurance Name :</label>
                            <input type="text" name="aoname" style="width: 200px;" value="<%=rs.getString(29)%>" required>
                        </div>

                    </div>


                    <div class="form-row">

                        <div class="form-group" >
                            <label for="noifany">No. if any :</label>
                            <input type="text" name="noifany" style="width: 200px;" value="<%=rs.getString(30)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="ward">Ward:</label>
                            <input type="text" name="ward" style="width: 200px;" value="<%=rs.getString(31)%>" required>
                        </div>

                         <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="nameofroad">Name of the Road:</label>
                            <input type="text" name="nameofroad" style="width: 200px;" value="<%=rs.getString(32)%>" required>
                        </div>

                    </div>
                    <div class="form-row">
                        <div class="form-group" >
                            <label for="nip">Nearest Identifiable Place:</label>
                            <input type="text" name="nip" style="width: 200px;" value="<%=rs.getString(33)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="village">Village:</label>
                            <input type="text" name="village" style="width: 200px;" value="<%=rs.getString(34)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="post">Post:</label>
                            <input type="text" name="post" style="width: 200px;" value="<%=rs.getString(35)%>" required>
                        </div>

                        
                    </div>
   


                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="State">State :</label>
                                <div class="form-select" style="width: 200px;">
                                   <input  name="country1" style="width: 200px;" value="<%=rs.getString(36)%>" required>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="District">District :</label>
                             <input name="district1" style="width: 200px;" value="<%=rs.getString(37)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-right: 13px;margin-left: 47px; margin-top: 27px;"></i></span>
                        </div>

                         <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="Taluka">Taluka :</label>
                             <input  name="city1" style="width: 200px;" value="<%=rs.getString(38)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-right: 13px;margin-left: 47px; margin-top: 27px;"></i></span>
                        </div>
                    </div>
 <hr style="width: 1100px;">
<!-- ************************************************************************************** -->
                    <br>
                     <label for="District">In case, Outside the P.S. :</label>
                     <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="State">State :</label>
                                <div class="form-select" style="width: 200px;">
                                   <input  name="state2" style="width: 200px;" value="<%=rs.getString(39)%>" required><br>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down" style="margin-top: -27px;margin-right: 1px;"></i></span>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="District">District :</label>
                            <input  name="district2" style="width: 200px;" value="<%=rs.getString(40)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-right: 13px;"></i></span>
                        </div>

                         <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="Taluka">Taluka :</label>
                            <input  name="city2" style="width: 200px;" value="<%=rs.getString(41)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                               style="margin-right: 13px;"></i></span>
                        </div>
                    </div>
<hr style="width: 1100px;">
<!-- ************************************************************************************** -->
                    <br>
                    <label for="dadfps">Complainant/Informant : Permanant Address</label>
                    <div class="form-row">

                         <div class="form-group" >
                            <label for="complainantname">Name:</label>
                            <input type="text" name="complainantname" style="width: 200px;" value="<%=rs.getString(42)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="fatherhusbandname">Fathers/Husband's Name:</label>
                            <input type="text" name="fatherhusbandname" style="width: 200px;" value="<%=rs.getString(43)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="birthdate">Birth Date:</label>
                            <input type="date" name="birthdate" id="birthdate" style="width: 200px;" value="<%=rs.getString(44)%>" required>
                        </div>

                    </div>

                    <div class="form-row">

                         <div class="form-group" >
                            <label for="age">Age:</label>
                            <input type="text" name="age" id="age" style="width: 200px;" onclick ="getAge();" value="<%=rs.getString(45)%>" readonly>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="phoneno">Phone No:</label>
                            <input type="number" name="phoneno" style="width: 200px;"onkeypress="isInputNumber(event)" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" min="10" maxlength = "10" value="<%=rs.getString(46)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="passportno">Passport No:</label>
                            <input type="text" name="passportno" style="width: 200px;" value="<%=rs.getString(47)%>" required>
                        </div>

                    </div>

                     <div class="form-row">

                         <div class="form-group" >
                            <label for="dateofissue">Date of Issue:</label>
                            <input type="date" name="dateofissue" style="width: 200px;" value="<%=rs.getString(48)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="placeofissue">Place Of Issue:</label>
                            <input type="text" name="placeofissue" style="width: 200px;"  value="<%=rs.getString(49)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="occupation">Occupation:</label>
                            <input type="text" name="occupation" style="width: 200px;" value="<%=rs.getString(50)%>" required>
                        </div>

                    </div>

                    <div class="form-row">

                         <div class="form-group" >
                            <label for="religion">Religion:</label>
                             <input  name="religion" style="width: 200px;" value="<%=rs.getString(51)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="cast">Cast:</label>
                          <input  name="cast" style="width: 200px;" value="<%=rs.getString(52)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="subcast">Sub Cast:</label>
                            <input type="text" name="subcast" style="width: 200px;" value="<%=rs.getString(53)%>"  required>
                        </div>

                        
                    </div>

                <div class="form-row">
                    <div class="form-group" >
                            <label for="address">Address:</label>
                            <input type="text" name="address" style="width: 200px;" value="<%=rs.getString(54)%>"  required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="ward1">Ward:</label>
                            <input type="text" name="ward1" style="width: 200px;" value="<%=rs.getString(55)%>"  required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="housenameno">House/Name No.:</label>
                            <input type="text" name="housenameno1" style="width:200px;" value="<%=rs.getString(56)%>"  required>
                           
                        </div>
                </div>

                <div class="form-row">

                        <div class="form-group" >
                            <label for="presentaddress">Present Address:</label> 
                            <input type="text" name="presentaddress" style="width: 200px;" value="<%=rs.getString(68)%>"  required>
                           
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;" >
                            <label for="panno">Pan No:</label>
                            <input type="text" name="panno" style="width: 200px;" id="txtPANCard" maxlength="10" minlength="10" onchange="ValidatePAN()"  value="<%=rs.getString(57)%>"  required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="votercardno">Voter's Card No:</label>
                            <input type="text" name="votercardno" onkeypress="isInputNumber(event)" style="width: 200px;" value="<%=rs.getString(58)%>"  required>
                        </div>

                       
                </div>

                <div class="form-row">

                         <div class="form-group" >
                            <label for="road">Road:</label>
                            <input type="text" name="road" style="width: 200px;"  value="<%=rs.getString(59)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="nip1">Nearest Identifiable Place:</label>
                            <input type="text" name="nip1" style="width: 200px;" value="<%=rs.getString(60)%>"  required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="village1">Village:</label>
                            <input type="text" name="village1" style="width: 200px;" value="<%=rs.getString(61)%>"  required>
                        </div>

                        
                </div>

                 <div class="form-row">

                        <div class="form-group" >
                            <label for="Post1">Post:</label>
                            <input type="text" name="Post1" style="width: 200px;" value="<%=rs.getString(62)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="policestation1">Police Station:</label>
                            <input type="text" name="policestation1" style="width: 200px;" value="<%=rs.getString(63)%>"  required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="nationality">Nationality:</label>
                           <input  name="nationality" style="width: 200px;" value="<%=rs.getString(67)%>"  required>
                        <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span> 
                        </div>
                </div>

                <div class="form-row">

                        <div class="form-group" >
                            <label for="Post1">State:</label>
                             <input name="state3" style="width: 200px;" value="<%=rs.getString(64)%>"  required>
                             <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="policestation1">District:</label>
                            <input name="district3" style="width: 200px;" value="<%=rs.getString(65)%>"  required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="policestation1">Taluka:</label>
                           <input name="city3" style="width: 200px;" value="<%=rs.getString(66)%>"  required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>
                </div>
<hr style="width: 1100px;">
<!-- ************************************************************************************** -->
                    <br>
                    <div class="form-group">
                         <label >Perticulars of properties stolen and invloved(attach necessary perforama) write down details on blank page:</label><br>
                        <input type="text" name="perticulars" style="width: 1084px; height: 110px;"  value="<%=rs.getString(69)%>" required>
                    </div><br>
<hr style="width: 1100px;">
<!-- ************************************************************************************** -->
    
                    <div class="form-row">
                        <div class="form-group" >
                            <label for="totalvalues">Total Values of Property Stolen/Involved:</label>
                            <input type="text" name="totalvalues" onkeypress="isInputNumber(event)" style="width: 400px; height: 100px;" value="<%=rs.getString(70)%>" required>
                       </div>

                       <div class="form-group" style="margin-left: 180px;width: 300px;" >
                            <label for="recoveredproperties">Recovered Properties:</label><br>
                            <input type="text" name="recoveredproperties" style="width: 400px; height: 100px;" value="<%=rs.getString(71)%>" required>
                       </div>
                    </div>
<hr style="width: 1100px;">
<!-- ************************************************************************************** -->

                    <div class="form-row">
                        <div class="form-group" >
                            <label for="unnaturaldeathcaseno">Unnatural Death Case No. (If any):</label>
                            <input type="text" name="unnaturaldeathcaseno" onkeypress="isInputNumber(event)" style="width: 200px; " value="<%=rs.getString(72)%>" required>
                       </div>
                    </div>
<hr style="width: 1100px;">
<!-- ************************************************************************************** -->
                    <label for="firbreif">First Inforation brief contents (Attach seperate sheet. if required):Details write down back blank page:</label>
                    <div class="form-group">
                         <input type="text" name="firbreif" style="width: 1084px; height: 110px; " value="<%=rs.getString(73)%>" required>
                       
                    </div>
<hr style="width: 1100px;">
<!-- ************************************************************************************** -->
                    
                    <div class="form-group" >
                        <label >Action taken : Since the above information reveals Commision of </label><label style="margin-left: 482px;width: 320px; margin-top: -27px;">Offence (s) u/s as mentioned at Iteam No. 2:</label>
                            
                    </div>
                <div class="form-row">  
                        <div class="form-group" >
                           <label>(1) Registered the case and took up the investigation or Directed (Name Of I.O.) to take up the investigation or</label>
                           <input type="text" name="nameofio" onkeypress="isInputNumber(event)" style="width: 200px; " value="<%=rs.getString(74)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                           <label>Rank</label>
                           <input type="text" name="rank"  style="width: 200px; " value="<%=rs.getString(74)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                           <label>No.</label>
                           <input type="text" name="no" onkeypress="isInputNumber(event)" style="width: 200px; "  value="<%=rs.getString(76)%>" required>
                        </div>
                </div>

                <div class="form-row">  
                        
                        <div class="form-group">
                           <label>(2) Refused Investigation due to</label>
                           <input type="text" name="refusedinvestigation" style="width: 200px; " value="<%=rs.getString(77)%>" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                           <label>(3) Transferred to P.S.</label><br>
                           <input type="text" name="transferredto" onkeypress="isInputNumber(event)" style="width: 200px; " value="<%=rs.getString(78)%>" required>
                        </div>
                </div>

                <div class="form-row">  
                        
                        <div class="form-group">
                           <label>State</label>
                             <input name="state4" style="width: 200px; " value="<%=rs.getString(79)%>" required>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 25px;margin-right: 16px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                           <label>District</label>
                           <input name="district4" style="width: 200px; " value="<%=rs.getString(80)%>" required>
                           <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 25px;margin-right: 16px;"></i></span>

                        </div>

                </div>
                <label style="margin-left: 413px;" >On Point Of </label>
                <label style="margin-left: 503px;margin-top: -26px;">Jurisdiction</label>
                <div class="form-group">
                    <label>F.I.R read over to the Compalinant /Informant,adimitted to be</label> 
                    <label style="margin-left: 455px;margin-top: -27px;">correctly </label>
                    <label>recorded and a copy given to the Compalinant /Informant, free of cost.</label>
                </div>
<hr style="width: 1100px;">
<!-- ************************************************************************************** -->
                    <div class="form-row">  
                        
                            <div class="form-group">
                               <label>Signature and Thumb Impression of the Complainant / Informant:</label>
                                 <input type="text" name="signthumbofcomplainant" style="width: 200px;" value="<%=rs.getString(81)%>" required>
                               
                            </div>  

                            
                            <div class="form-group" style="margin-left: 23px;width: 300px;">
                               <label>Signature of Officer In-Charge, Police Station</label>                            
                               <label>Name :</label>
                                <input type="text" name="name" style="width: 200px;" value="<%=rs.getString(82)%>" required>
                               
                            </div>  

                            <div class="form-group" style="margin-left: 24px;width: 300px;">
                               <label>Rank :</label><br><br>
                              <input type="text" name="rank1" style="width: 200px;" value="<%=rs.getString(83)%>" required>
<br>   
                            </div> 

                            <div class="form-group" style="margin-left: 24px;width: 300px;">
                                <label>Posting Code No of I.O. :</label><br><br>
                                <input type="text" name="postingcodenoofio" style="width: 200px;" value="<%=rs.getString(84)%>" required>
                            </div>  
                               
                               
                          
                     </div> 
                      
<hr style="width: 1100px;">
               <!-- <div id="javaquery" ></div> 
                
                <label for="complaint" style="margin-bottom:-14px;">Add Guest:</label> -->
                
<!-- ************************************************************************************** -->
                    <!-- <div class="form-submit">
                            <input type="submit" value="Cancel" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Add Guest" class="submit" name="submit" id="submit" />
                        </div> -->
<!-- ************************************************************************************** -->

<script>
function myFunction(nameSelect) {
  // var x = document.getElementById('myDIV');
  // if (x.style.visibility === 'hidden') {
  //   x.style.visibility = 'visible';
  // } else {
  //   x.style.visibility = 'hidden';
  // }
    console.log(nameSelect);
    if(nameSelect){
        GuestOptionValue = document.getElementById("GuestOption").value;
        if(GuestOptionValue== nameSelect.value){
            document.getElementById("GuestDivCheck").style.display = "block";
        }
        else{
            document.getElementById("GuestDivCheck").style.display = "none";
        }
    }
    else{
        document.getElementById("GuestDivCheck").style.display = "none";
    }
}
</script>
<SCRIPT type="text/javascript">
    function ValidateFileUpload() {
        var fuData = document.getElementById('fileChooser');
        var FileUploadPath = fuData.value;

    //To check if user upload any file
        if (FileUploadPath == '') {
            alert("Please upload an image");

        } else {
            var Extension = FileUploadPath.substring(
                    FileUploadPath.lastIndexOf('.') + 1).toLowerCase();

//The file uploaded is an image

        if (Extension == "gif" || Extension == "png" || Extension == "bmp"
                    || Extension == "jpeg" || Extension == "jpg") {

// To Display
                if (fuData.files && fuData.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#blah').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(fuData.files[0]);
                }

            } 

//The file upload is NOT an image
          else {
                alert("Photo only allows file types of GIF, PNG, JPG, JPEG and BMP. ");
                 fuData.value = '';
                 $('#blah').attr('src','nophoto.png');

            }
        }
    }
    function agefinding()
    {
       var birthDay = document.getElementById("dob").value;
        var DOB = new Date(birthDay);
        var today = new Date();
        var age = today.getTime() - DOB.getTime();
        age = Math.floor(age / (1000 * 60 * 60 * 24 * 365.25));
       // alert(age);
       if(age>=21)
       {
            document.getElementById("age").value=age;
       }
       else
       {
        alert("your age is below 21..");
        document.getElementById("age").value=null;
         document.getElementById("dob").value=null;
       }
   }
   function ValidatePAN() {
    var txtPANCard = document.getElementById("txtPANCard");
    var lblPANCard = document.getElementById("lblPANCard")
    var regex = /([A-Z]){5}([0-9]){4}([A-Z]){1}$/;
    if (regex.test(txtPANCard.value.toUpperCase())) {
        lblPANCard.style.visibility = "hidden";
        return true;
    } else {
        alert("Invalid PAN Number");
        document.getElementById("txtPANCard").value=null;
    }
}
</SCRIPT>

 <% }

}
catch (Exception e)
{
	out.println("Unable to connect to database.");
System.out.println(e);
}
%>




                        
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>