<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</head>
<body>
<center><h2 style="color: white;">First Information Report</h2></center>

    <div class="main">

        <div class="container" style="width: 1208px;">
            <div class="signup-content">
               <!--  <div class="signup-img" style="width: 500px;">
                    <img src="images/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div> -->
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form"  style="   padding-left: 100px;" action="FIR1.jsp">
                        <!-- style="width:1117px;" -->
                        
                        
                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="State">State :</label>
                                <div class="form-select" style="width: 200px;">
                                     <select name="city" id="city" style="display: none;"></select>
                                    <select name="country" id="state" size="1" ></select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="District">District :</label>
                            <select name="state" id="district" size="1" style="width: 200px;" ></select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-right: 13px;margin-left: 47px; margin-top: 27px;"></i></span>
                        </div>
                    </div>

<!-- ************************************************************************************** -->

                <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="act">Act :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input  name="act"  type="text"required />
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="District">Section :</label>
                            <input type="text" name="section" style="width: 200px;" required>
                        </div>
                    </div>

<!-- ************************************************************************************** -->
                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="act1">Act :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input  name="act1"  type="text"required />
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="Section">Section :</label>
                            <input type="text" name="section1" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="otheractandsection">Other Acts and Sections :</label>
                            <input type="text" name="otheractandsection" style="width: 200px;" required>
                        </div>

                    </div>
          
<!-- ************************************************************************************** -->

                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="policestation">Police Station :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input  name="policestation"  type="text"required />
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="firno">FIR NO :</label>
                            <input type="text" name="firno" onkeypress="isInputNumber(event)" style="width: 200px;" required>
                        </div>
                    </div>

<!-- ************************************************************************************** -->

                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="year">Year:</label>
                                <div class="form-select" style="width: 200px;">
                                    <input  name="year" onkeypress="isInputNumber(event)" type="text"required />
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="date">Date :</label>
                            <input type="date" name="date" onkeypress="isInputNumber(event)" style="width: 200px;" required>
                        </div>
                    </div>
<hr style="width: 1203px;margin-left: -98px;">

<!-- ************************************************************************************** -->

                    <br><label >Occurance Of Offence:</label>
                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="day">Day:</label>
                                <div class="form-select" style="width: 200px;">
                                    <select name="day">
                                        <option value="Choose Day">Choose Day</option>
                                        <option value="Sunday">Sunday</option>
                                        <option value="Monday">Monday</option>
                                        <option value="Tuesday">Tuesday</option>
                                        <option value="Wednesday">Wednesday</option>
                                        <option value="Thursday">Thursday</option>
                                        <option value="Friday">Friday</option>
                                        <option value="Saturday">Saturday</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="datefrom">Date From:</label>
                            <input type="date" name="datefrom" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="timefrom">Time:</label>
                            <select name="timefrom" style="width: 200px;">
                                <option value="Choose Day">Choose Time</option>
                                <option value="00.00 to 03.00">00.00 to 03.00</option>
                                <option value="03.00 to 06.00">03.00 to 06.00</option>
                                <option value="06.00 to 09.00">06.00 to 09.00</option>
                                <option value="09.00 to 12.00">09.00 to 12.00</option>
                                <option value="12.00 to 15.00">12.00 to 15.00</option>
                                <option value="15.00 to 18.00">15.00 to 18.00</option>
                                <option value="18.00 to 21.00">18.00 to 21.00</option>
                                <option value="21.00 to 24.00">21.00 to 24.00</option>
                                <option value="06.00 to 18.00">06.00 to 18.00</option>
                                 <option value="18.00 to 06.00">18.00 to 06.00</option>
                            </select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down"
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>


                    </div>

<!-- ************************************************************************************** -->

                    <div class="form-row">
                        <div class="form-group" >
                            <label for="dateto">Date To:</label>
                            <input type="date" name="dateto" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="timeto">Time:</label>
                            <select name="timeto" style="width: 200px;">
                               <option value="Choose Day">Choose Time</option>
                                <option value="00.00 to 03.00">00.00 to 03.00</option>
                                <option value="03.00 to 06.00">03.00 to 06.00</option>
                                <option value="06.00 to 09.00">06.00 to 09.00</option>
                                <option value="09.00 to 12.00">09.00 to 12.00</option>
                                <option value="12.00 to 15.00">12.00 to 15.00</option>
                                <option value="15.00 to 18.00">15.00 to 18.00</option>
                                <option value="18.00 to 21.00">18.00 to 21.00</option>
                                <option value="21.00 to 24.00">21.00 to 24.00</option>
                                <option value="06.00 to 18.00">06.00 to 18.00</option>
                                 <option value="18.00 to 06.00">18.00 to 06.00</option>
                            </select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                    </div>
   <hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    <br><label >Information Recieved at Police Station:</label>
                      <div class="form-row">

                        <div class="form-group" >
                            <label for="irapsdate">Date To:</label>
                            <input type="date" name="irapsdate" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="irapstime">Time:</label>
                            <select name="irapstime" style="width: 200px;">
                                <option value="Choose Day">Choose Time</option>
                                <option value="00.00 to 03.00">00.00 to 03.00</option>
                                <option value="03.00 to 06.00">03.00 to 06.00</option>
                                <option value="06.00 to 09.00">06.00 to 09.00</option>
                                <option value="09.00 to 12.00">09.00 to 12.00</option>
                                <option value="12.00 to 15.00">12.00 to 15.00</option>
                                <option value="15.00 to 18.00">15.00 to 18.00</option>
                                <option value="18.00 to 21.00">18.00 to 21.00</option>
                                <option value="21.00 to 24.00">21.00 to 24.00</option>
                                <option value="06.00 to 18.00">06.00 to 18.00</option>
                                 <option value="18.00 to 06.00">18.00 to 06.00</option>
                            </select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                    </div>
<hr style="width: 1204px;margin-left: -98px;">

<!-- ************************************************************************************** -->

                    <br><label >General Diary Reference:</label>
                      <div class="form-row">

                         <div class="form-group" >
                            <label for="entryno">Entry NO :</label>
                            <input type="text" name="entryno" onkeypress="isInputNumber(event)" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="gdrdate">Date To:</label>
                            <input type="date" name="gdrdate" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="gdrtime">Time:</label>
                            <select name="gdrtime" style="width: 200px;">
                                <option value="Choose Day">Choose Time</option>
                                <option value="00.00 to 03.00">00.00 to 03.00</option>
                                <option value="03.00 to 06.00">03.00 to 06.00</option>
                                <option value="06.00 to 09.00">06.00 to 09.00</option>
                                <option value="09.00 to 12.00">09.00 to 12.00</option>
                                <option value="12.00 to 15.00">12.00 to 15.00</option>
                                <option value="15.00 to 18.00">15.00 to 18.00</option>
                                <option value="18.00 to 21.00">18.00 to 21.00</option>
                                <option value="21.00 to 24.00">21.00 to 24.00</option>
                                <option value="06.00 to 18.00">06.00 to 18.00</option>
                                 <option value="18.00 to 06.00">18.00 to 06.00</option>
                            </select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                    </div>
<hr style="width: 1204px;margin-left: -98px;">

<!-- ************************************************************************************** -->
                    
<br>
                      <div class="form-row">

                        <div class="form-group" >
                            <label for="irapsdate">Type OF Information:</label>
                            <input type="text" name="toi" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="writtenoral">Written/Oral:</label>
                            <select name="writtenoral" style="width: 200px;">
                                <option value="Written">Written</option>
                                <option value="Oral">Oral</option>
                                
                            </select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                    </div>
<hr style="width: 1204px;margin-left: -98px;">

<!-- ************************************************************************************** -->

                    <br><label >Place OF Occurance:</label>
                      <div class="form-row">

                         <div class="form-group" >
                            <label for="dadfps">Direction and Distance From P.S :</label>
                            <input type="text" name="dadfps" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="cbopnameno">Chouki/Beat/O.P. Name and No.:</label>
                            <input type="text" name="cbopnameno" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="aoname">Address Of Occurance Name :</label>
                            <input type="text" name="aoname" style="width: 200px;" required>
                        </div>

                    </div>


                    <div class="form-row">

                        <div class="form-group" >
                            <label for="noifany">No. if any :</label>
                            <input type="text" name="noifany" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="ward">Ward:</label>
                            <input type="text" name="ward" style="width: 200px;" required>
                        </div>

                         <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="nameofroad">Name of the Road:</label>
                            <input type="text" name="nameofroad" style="width: 200px;" required>
                        </div>

                    </div>
                    <div class="form-row">
                        <div class="form-group" >
                            <label for="nip">Nearest Identifiable Place:</label>
                            <input type="text" name="nip" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="village">Village:</label>
                            <input type="text" name="village" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="post">Post:</label>
                            <input type="text" name="post" style="width: 200px;" required>
                        </div>

                        
                    </div>
   


                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="State">State :</label>
                                <div class="form-select" style="width: 200px;">
                                   <select name="country1" id="state1" size="1" class="form-control"></select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="District">District :</label>
                             <!-- <select name="state1" id="state1" size="1" style="width: 200px;"></select> -->
                             <select name="district1" id="district1" size="1" style="width: 200px;"></select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-right: 13px;margin-left: 47px; margin-top: 27px;"></i></span>
                        </div>

                         <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="Taluka">Taluka :</label>
                             <select name="city1" id="city1" size="1" style="width: 200px;"></select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-right: 13px;margin-left: 47px; margin-top: 27px;"></i></span>
                        </div>
                    </div>
 <hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    <br>
                     <label for="District">In case, Outside the P.S. :</label>
                     <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                                <label for="State">State :</label>
                                <div class="form-select" style="width: 200px;">
                                    <select name="state2" id="state2" size="1"  class="form-control"></select> <br>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down" style="margin-top: -27px;margin-right: 1px;"></i></span>
                                </div>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="District">District :</label>
                             <select name="district2" id="district2" size="1" style="width: 200px;"></select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-right: 13px;"></i></span>
                        </div>

                         <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="Taluka">Taluka :</label>
                            <select name="city2" id="city2" size="1" style="width: 200px;"></select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                               style="margin-right: 13px;"></i></span>
                        </div>
                    </div>
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    <br>
                    <label for="dadfps">Complainant/Informant : Permanant Address</label>
                    <div class="form-row">

                         <div class="form-group" >
                            <label for="complainantname">Name:</label>
                            <input type="text" name="complainantname" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="fatherhusbandname">Fathers/Husband's Name:</label>
                            <input type="text" name="fatherhusbandname" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="birthdate">Birth Date:</label>
                            <input type="date" name="birthdate" id="birthdate" style="width: 200px;" required>
                        </div>

                    </div>

                    <div class="form-row">

                         <div class="form-group" >
                            <label for="age">Age:</label>
                            <input type="text" name="age" id="age" style="width: 200px;" onclick ="getAge();" readonly>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="phoneno">Phone No:</label>
                            <input type="number" name="phoneno" style="width: 200px;"onkeypress="isInputNumber(event)" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" min="10" maxlength = "10"  required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="passportno">Passport No:</label>
                            <input type="text" name="passportno" style="width: 200px;" required>
                        </div>

                    </div>

                     <div class="form-row">

                         <div class="form-group" >
                            <label for="dateofissue">Date of Issue:</label>
                            <input type="date" name="dateofissue" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="placeofissue">Place Of Issue:</label>
                            <input type="text" name="placeofissue" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="occupation">Occupation:</label>
                            <input type="text" name="occupation" style="width: 200px;" required>
                        </div>

                    </div>

                    <div class="form-row">

                         <div class="form-group" >
                            <label for="religion">Religion:</label>
                             <select id="ReligionSelect" size="1" name="religion" onchange="makeSubmenu(this.value)" style="width: 200px;">
                          
                                  <option value="" disabled selected>Choose Religion</option>
                                  <option >Hindu</option>
                                  <option >Muslim</option>
                                  <option >Shikh</option>
                                  <option >Isai</option>
                                  <option >Other</option>
                            </select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="cast">Cast:</label>
                           <select  id="CastSelect" size="1" name="cast" style="width: 200px;">
                              <option value="" disabled selected>Choose Cast</option>
                              <option></option>
                            </select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="subcast">Sub Cast:</label>
                            <input type="text" name="subcast" style="width: 200px;" required>
                        </div>

                        
                    </div>

                <div class="form-row">
                    <div class="form-group" >
                            <label for="address">Address:</label>
                            <input type="text" name="address" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="ward1">Ward:</label>
                            <input type="text" name="ward1" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="housenameno">House/Name No.:</label>
                            <input type="text" name="housenameno1" style="width:200px;" required>
                           
                        </div>
                </div>

                <div class="form-row">

                        <div class="form-group" >
                            <label for="presentaddress">Present Address:</label> 
                            <input type="text" name="presentaddress" style="width: 200px;" required>
                           
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;" >
                            <label for="panno">Pan No:</label>
                            <input type="text" name="panno" style="width: 200px;" id="txtPANCard" maxlength="10" minlength="10" onchange="ValidatePAN()" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="votercardno">Voter's Card No:</label>
                            <input type="text" name="votercardno" onkeypress="isInputNumber(event)" style="width: 200px;" required>
                        </div>

                       
                </div>

                <div class="form-row">

                         <div class="form-group" >
                            <label for="road">Road:</label>
                            <input type="text" name="road" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="nip1">Nearest Identifiable Place:</label>
                            <input type="text" name="nip1" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="village1">Village:</label>
                            <input type="text" name="village1" style="width: 200px;" required>
                        </div>

                        
                </div>

                 <div class="form-row">

                        <div class="form-group" >
                            <label for="Post1">Post:</label>
                            <input type="text" name="Post1" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="policestation1">Police Station:</label>
                            <input type="text" name="policestation1" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="nationality">Nationality:</label>
                            <select style="width: 200px;" name="nationality">
                                <option value="Select Nationality">Select Nationality</option>
                                <option value="India">India</option>
                                <option value="USA">USA</option>
                                <option value="US">US</option>
                                <option value="UK">UK</option>
                                <option value="Japan">Japan</option>
                                <option value="Australia">Australia</option>
                          </select>
                        <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span> 
                        </div>
                </div>

                <div class="form-row">

                        <div class="form-group" >
                            <label for="Post1">State:</label>
                             <select name="state3" id="state3" size="1" style="width: 200px;"></select>
                             <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="policestation1">District:</label>
                            <select name="district3" id="district3" style="width: 200px;" size="1"></select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="policestation1">Taluka:</label>
                            <select name="city3" id="city3" style="width: 200px;" size="1"></select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 20px;margin-right: 13px;"></i></span>
                        </div>
                </div>
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    <br>
                    <div class="form-group">
                         <label >Perticulars of properties stolen and invloved(attach necessary perforama) write down details on blank page:</label><br>
                        <input type="text" name="perticulars" style="width: 1084px; height: 110px;" required>
                    </div><br>
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    <br>
                    <div class="form-group">
                         <label >Add Suspects</label><br>
                      <a href="Suspects.jsp" class="submit" id="submit" style="color:white;text-decoration:none;width: 61px;height: 20px; text-align:center;">Add</a>
                    </div><br>
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
    
                    <div class="form-row">
                        <div class="form-group" >
                            <label for="totalvalues">Total Values of Property Stolen/Involved:</label>
                            <input type="text" name="totalvalues" onkeypress="isInputNumber(event)" style="width: 400px; height: 100px;" required>
                       </div>

                       <div class="form-group" style="margin-left: 180px;width: 300px;" >
                            <label for="recoveredproperties">Recovered Properties:</label><br>
                            <input type="text" name="recoveredproperties" style="width: 400px; height: 100px;" required>
                       </div>
                    </div>
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->

                    <div class="form-row">
                        <div class="form-group" >
                            <label for="unnaturaldeathcaseno">Unnatural Death Case No. (If any):</label>
                            <input type="text" name="unnaturaldeathcaseno" onkeypress="isInputNumber(event)" style="width: 200px; " required>
                       </div>
                    </div>
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    <label for="firbreif">First Inforation brief contents (Attach seperate sheet. if required):Details write down back blank page:</label>
                    <div class="form-group">
                         <input type="text" name="firbreif" style="width: 1084px; height: 110px; " required>
                       
                    </div>
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    
                    <div class="form-group" >
                        <label >Action taken : Since the above information reveals Commision of </label><label style="margin-left: 482px;width: 320px; margin-top: -27px;">Offence (s) u/s as mentioned at Iteam No. 2:</label>
                            
                    </div>
                <div class="form-row">  
                        <div class="form-group" >
                           <label>(1) Registered the case and took up the investigation or Directed (Name Of I.O.) to take up the investigation or</label>
                           <input type="text" name="nameofio"  style="width: 200px; " required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                           <label>Rank</label>
                           <input type="text" name="rank"  style="width: 200px; " required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                           <label>No.</label>
                           <input type="text" name="no" onkeypress="isInputNumber(event)" style="width: 200px; " required>
                        </div>
                </div>

                <div class="form-row">  
                        
                        <div class="form-group">
                           <label>(2) Refused Investigation due to</label>
                           <input type="text" name="refusedinvestigation" style="width: 200px; " required>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                           <label>(3) Transferred to P.S.</label><br>
                           <input type="text" name="transferredto" onkeypress="isInputNumber(event)" style="width: 200px; " required>
                        </div>
                </div>

                <div class="form-row">  
                        
                        <div class="form-group">
                           <label>State</label>
                            <select name="state4" id="state4" style="width: 200px; " style="" size="1"></select>
                            <span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 25px;margin-right: 16px;"></i></span>
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                           <label>District</label>
                           <select name="district4" id="district4" style="width: 200px;" size="1">
                           </select>
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
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    <div class="form-row">  
                        
                            <div class="form-group">
                               <label>Signature and Thumb Impression of the Complainant / Informant:</label>
                                 <input type="text" name="signthumbofcomplainant" style="width: 200px;" required>
                               
                            </div>  

                            
                            <div class="form-group" style="margin-left: 23px;width: 300px;">
                               <label>Signature of Officer In-Charge, Police Station</label>                            
                               <label>Name :</label>
                                <input type="text" name="name" style="width: 200px;" required>
                               
                            </div>  

                            <div class="form-group" style="margin-left: 24px;width: 300px;">
                               <label>Rank :</label><br><br>
                              <input type="text" name="rank1" style="width: 200px;" required>
<br>   
                            </div> 

                            <div class="form-group" style="margin-left: 24px;width: 300px;">
                                <label>Posting Code No of I.O. :</label><br><br>
                                <input type="text" name="postingcodenoofio" style="width: 200px;" required>
                            </div>  
                               
                               
                          
                     </div>  
<hr style="width: 1204px;margin-left: -98px;">
<!-- ************************************************************************************** -->
                    <div class="form-submit">
                            <input type="submit" value="Cancel" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Register" class="submit" name="submit" id="submit" />
                        </div>
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