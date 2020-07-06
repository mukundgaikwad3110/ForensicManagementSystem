<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>First Information Report</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
  <!-- <script type="text/javascript" src="js/sdc.js"></script>
 <script type="text/javascript" src="sdc1.js"></script>   -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
 <script type="text/javascript" src="js/myfile.js"></script>
<script type="text/javascript" src="js/myfile1.js"></script>  
<script type="text/javascript" src="js/myfile2.js"></script>  
<script type="text/javascript" src="js/myfile3.js"></script>  
<script type="text/javascript" src="js/myfile4.js"></script>  
<script type="text/javascript" src="js/age2.js"></script>
<script type="text/javascript" src="js/length.js"></script>
<script type="text/javascript" src="js/Religion.js"></script>
  
</head>
<body ><br>
  <script>
  // numeric value 
  function isInputNumber(evt){
      var ch=String.fromCharCode(evt.which);
      if(!(/[0-9]/.test(ch))){
        evt.preventDefault();
      }
    }
    
 // pan validation
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

 
  
  

  </script>
<div class="wrapper" style="" >
  <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-files-o"></i>First Information Report</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Officer</a></li>
              <li><i class="icon_document_alt"></i>First Information Report</li>
              
            </ol>
          </div>
        </div>
        
  <!-- container section start -->
 <!--  <section id="container" class=""> -->
    <!--main content start-->
        <!-- Form validations -->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel" id="panel-image" style="height: 3800px; background-color:black;">
              <header class="panel-heading">
              Forensic Managaement System
              </header>

              <div class="panel-body" id="hero-image" style="">
                <div class="form">
                  <!-- <form class="form-validate form-horizontal" method="get" action=""> -->
                    <form class="form-validate form-horizontal"  method="post" action="FIR1.jsp">
         
                   <div class="col-md-12 ">
                    
                      <label for="eid" class="control-label col-lg-2">State<span class="required">*</span></label>
                      <div class="col-lg-4">

                        
                        <!-- <select id="countrySelect" size="1" onchange="makeSubmenu(this.value)">
                          <option value="" disabled selected>Choose State</option> -->



                        <!-- <select class="form-control" id="countrySelect" size="1" onchange="makeSubmenu1(this.value)">
                            <option value="" disabled selected>Select State</option>
                             <option >Maharashtra</option>
                              <option >Gujrat</option>
                               <option >Delhi</option>
                                <option >Madhya Pradesh</option>
                                 <option >Uttar Pradesh</option>
                                  <option >Karnatak</option>
                                   <option>Andhra Pradesh</option>
                                    <option >Kolkata</option>
                                      <option >Odisha</option>
                                        <option >Kerala</option>
                            
                        </select> -->
                        <select name="city" id="city" style="display: none;"></select>
                         <select name="country" id="state" size="1" class="form-control"></select> <br>

                        <!--  <select name="state" id="countySel1" size="1" class="form-control">
                          <option value="" selected="selected">Select State</option>
                            </select>
 -->
                      </div>
          <label for="cname" class="control-label col-lg-2">Act <span class="required">*</span></label>
                      <div class="col-lg-4 ">
                        <input class="form-control"  name="act"  type="text" required /><br><br>
                      </div>
                    

                    <br><label for="caddress" class="control-label col-lg-2">District :<span class="required">*</span></label>
                      <div class="col-lg-4 ">
                        <select name="state" id="district"  size="1" class="form-control"></select> <br>
                      </div>

                       <label for="caddress" class="control-label col-lg-2">Section :<span class="required">*</span></label>
                      <div class="col-lg-4">
                          <input type="text" name="section" rows="2" cols="80" class="form-control" >
                          <br><br>
                      </div>

                      <label for="caddress" class="control-label col-lg-2">Police Station :<span class="required">*</span></label>
                      <div class="col-lg-4">
                          <input type="text" name="policestation" rows="2" cols="80" class="form-control" >
                         <br><br>
                      </div>

                       <label for="cname" class="control-label col-lg-2">Act <span class="required">*</span></label>
                      <div class="col-lg-4 ">
                        <input class="form-control"  name="act1"  type="text" required /><br><br>
                      </div>

                       <label for="cname" class="control-label col-lg-2">FIR No. <span class="required">*</span></label>
                      <div class="col-lg-4 ">
                        <input class="form-control" name="firno" onkeypress="isInputNumber(event)" type="text" required /><br><br>
                      </div>

                      <label for="caddress" class="control-label col-lg-2">Section :<span class="required">*</span></label>
                      <div class="col-lg-4">
                          <input type="text" name="section1"  class="form-control" >
                         <br><br>
                      </div>

                      <label for="caddress" class="control-label col-lg-2">Year :<span class="required">*</span></label>
                      <div class="col-lg-4">
                          <input type="text " name="year" onkeypress="isInputNumber(event)" class="form-control" >
                         <br><br>
                      </div>

                

                      <label for="caddress" class="control-label col-lg-2">Other Act And Sections :<span class="required">*</span></label>
                      <div class="col-lg-4">
                          <input type="text" name="otheractsection" rows="2" cols="80" class="form-control" >
                          <br><br>
                      </div>

                       <div class="form-group ">  
                  <label for= "cbirth" class="control-label col-lg-2"> Date:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="date" name="date"  required style="margin-left: 6%;"
>
                </div><br><br></div>
        </div><hr>

 
            <div class="col-md-12 ">
                      <label class="control-label col-lg-3">Occurance Of Offence</label><br><br>
                      <label for="caddress" class="control-label col-lg-2">Day:</label>
                  <div class="col-md-2">
                    <select class="form-control" name="day">
                            <option value="Choose Day">Choose Day</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            <option value="Saturday">Saturday</option>
                          </select>

                  </div>
                  <label class="control-label col-lg-2"> Date From:<span class="required">*</span> </label>
                 <div class="col-lg-2" style="margin-left:-1%">  
                   <input class="form-control" type="Date" name="datefrom"  required style="margin-left: 6%; width: 105%"
>
                </div>
                <label class="control-label col-lg-2">Time:</label >
                  <div class="col-md-2">
                    <select class="form-control" name="timefrom">
                        <option value="Choose Day">Choose Time</option>
                        <option value="Sunday">00.00 to 03.00</option>
                        <option value="Monday">03.00 to 06.00</option>
                        <option value="Tuesday">06.00 to 09.00</option>
                        <option value="Wednesday">09.00 to 12.00</option>
                        <option value="Thursday">12.00 to 15.00</option>
                        <option value="Friday">15.00 to 18.00</option>
                        <option value="Saturday">18.00 to 21.00</option>
                        <option value="Saturday">21.00 to 24.00</option>
                        <option value="Saturday">06.00 to 18.00</option>
                         <option value="Saturday">18.00 to 06.00</option>
                      </select><br><br></div>   


                       <label class="control-label col-lg-2"> Date To:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="date" name="dateto"  required style="margin-left: -1%;  width: 105%"
>
                </div>
                <label class="control-label col-lg-2">Time:</label >
                  <div class="col-md-2">
                    <select class="form-control" name="timeto">
                        <option value="Choose Day">Choose Time</option>
                        <option value="Sunday">00.00 to 03.00</option>
                        <option value="Monday">03.00 to 06.00</option>
                        <option value="Tuesday">06.00 to 09.00</option>
                        <option value="Wednesday">09.00 to 12.00</option>
                        <option value="Thursday">12.00 to 15.00</option>
                        <option value="Friday">15.00 to 18.00</option>
                        <option value="Saturday">18.00 to 21.00</option>
                        <option value="Saturday">21.00 to 24.00</option>
                        <option value="Saturday">06.00 to 18.00</option>
                         <option value="Saturday">18.00 to 06.00</option>
                      </select>
                   </div>




                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br><br><br><br><br>
                   <hr>
 
        </div>

        <div class="col-md-12 ">
                      <label class="control-label col-lg-3">Information Recieved at P.S.</label><br><br>
                     
                  <label class="control-label col-lg-2"> Date :<span class="required">*</span> </label>
                 <div class="col-lg-2" style="margin-left:-1%">  
                   <input class="form-control" type="date" name="irapsdate"  required style="margin-left: 6%; width: 105%"
>
                </div>
                <label class="control-label col-lg-2">Time:</label >
                  <div class="col-md-2">
                    <select class="form-control" name="irapstime" >
                        <option value="Choose Day">Choose Time</option>
                        <option value="Sunday">00.00 to 03.00</option>
                        <option value="Monday">03.00 to 06.00</option>
                        <option value="Tuesday">06.00 to 09.00</option>
                        <option value="Wednesday">09.00 to 12.00</option>
                        <option value="Thursday">12.00 to 15.00</option>
                        <option value="Friday">15.00 to 18.00</option>
                        <option value="Saturday">18.00 to 21.00</option>
                        <option value="Saturday">21.00 to 24.00</option>
                        <option value="Saturday">06.00 to 18.00</option>
                         <option value="Saturday">18.00 to 06.00</option>
                      </select><br><br></div>   


                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>

         <div class="col-md-12 ">
                      <label class="control-label col-lg-3">General Diary Reference</label><br><br>
                      
              <label class="control-label col-lg-2">Entry No:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="entryno" onkeypress="isInputNumber(event)"  required style="margin-left: -1%;  width: 105%"
>
                </div>




                  <label class="control-label col-lg-2"> Date :<span class="required">*</span> </label>
                 <div class="col-lg-2" style="margin-left:-1%">  
                   <input class="form-control" type="date" name="gdrdate"  required style="margin-left: 6%; width: 105%"
>
                </div>
                <label class="control-label col-lg-2">Time:</label >
                  <div class="col-md-2">
                    <select class="form-control" name="gdrtime">
                        <option value="Choose Day">Choose Time</option>
                        <option value="Sunday">00.00 to 03.00</option>
                        <option value="Monday">03.00 to 06.00</option>
                        <option value="Tuesday">06.00 to 09.00</option>
                        <option value="Wednesday">09.00 to 12.00</option>
                        <option value="Thursday">12.00 to 15.00</option>
                        <option value="Friday">15.00 to 18.00</option>
                        <option value="Saturday">18.00 to 21.00</option>
                        <option value="Saturday">21.00 to 24.00</option>
                        <option value="Saturday">06.00 to 18.00</option>
                         <option value="Saturday">18.00 to 06.00</option>
                      </select><br></div>   


                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>



        <div class="col-md-12 ">
                      
                      
              <label class="control-label col-lg-2">Type of Information:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="toi"  required style="margin-left: -1%;  width: 105%"
>
                </div>

                <label class="control-label col-lg-2">Written / Oral:</label >
                  <div class="col-md-2">
                    <select class="form-control" name="writtenoral" >
                        <option value="Written">Written</option>
                        
                         <option value="Oral">Oral</option>
                      </select><br></div>   


                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>
        <div class="col-md-12 ">
                      <label class="control-label col-lg-2">Place Of Occurance</label><br><br>
                      
              <label class="control-label col-lg-3">Directipn and Distance from P.S.<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="dadfps"  required style="margin-left: -1%;  width: 105%"
>
                </div>
                <label class="control-label col-lg-3">Chouki/Beat/O.P. Name and No.:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="cbopnameno"  required><br>
                </div>
                <label class="control-label col-lg-3">Address Of Occurance Name :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="aoname"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br>

                <label class="control-label col-lg-3">No. if any :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="noifany" onkeypress="isInputNumber(event)"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br><br>
        <br><label class="control-label col-lg-3">Ward:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="ward" onkeypress="isInputNumber(event)"  required style="margin-left: -1%;  width: 105%"
>
                </div>  
          <label class="control-label col-lg-3">Name Of Road :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="nameofroad"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br><br>

                <label class="control-label col-lg-3">Nearest Identifiable Place:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="nip"  required style="margin-left: -1%;  width: 105%"
>
                </div>
                 <label class="control-label col-lg-3">Village :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="village"  required style="margin-left: -1%;  width: 105%"
>
                </div> <br><br><br>
                <label class="control-label col-lg-3">Post:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="post" onkeypress="isInputNumber(event)" required style="margin-left: -1%;  width: 105%"
>
                </div>
                 <label for="eid" class="control-label col-lg-3">State<span class="required">*</span></label>
                      <div class="col-lg-2">

                        <select name="country1" id="state1" size="1" class="form-control"></select>
                         <!-- <select name="state" id="countySel2" size="1" class="form-control" onchange="myFunction()">
                          <option value="" selected="selected">Select State</option>
                            </select> -->
                    </div><br><br><br>

                      <label class="control-label col-lg-3">District :<span class="required">*</span></label>
                      <div class="col-lg-2">

                        <!-- <select name="state1" id="state1" size="1" class="form-control"></select> -->
                        <select name="district1" id="district1" size="1" class="form-control"></select>  
                      <!--  <select name="countrya" id="stateSel2" size="1" class="form-control">
                              <option value="" selected="selected">Please select District first</option>
                              </select> -->
                      </div>

                  <label class="control-label col-lg-3">Taluka :<span class="required">*</span></label>
                      <div class="col-lg-2">

                        
                       <!--  <select class="form-control">
                            <option value="id">Select Taluka</option>
                             <option >Solapur</option>
                              <option >Kolhapur</option>
                               <option >Osmanabad</option>
                                <option >Ahmadnagar</option>
                                 <option >Sangli</option>
                                  <option >Satara</option>
                                   <option >Sindhudurg</option>
                                    <option>Ratnagiri</option>


                                      <option >Raygad</option>

                            
                        </select> -->
                        <select name="city1" id="city1" size="1" class="form-control"></select>
                        <!-- <select name="district" id="districtSel2" size="1" class="form-control">
                        <option value="" selected="selected">Please select City first</option>
                        </select> -->
                      </div><br><br><br>






                   <hr>
                 </div>
                      <div class="col-md-12 ">
            <label class="control-label col-lg-4">In case , outside the limit of this P.S. :</label><br><br>
                    
              <label for="eid" class="control-label col-lg-2">State<span class="required">*</span></label>
                      <div class="col-lg-2">

                        <select name="state2" id="state2" size="1"  class="form-control"></select> <br>

                      <!--  <select class="form-control" id="countrySelect" size="1" onchange="makeSubmenu(this.value)">
                            <option value="" disabled selected>Select State</option>
                             <option >Maharashtra</option>
                              <option >Gujrat</option>
                               <option >Delhi</option>
                                <option >Madhya Pradesh</option>
                                 <option >Uttar Pradesh</option>
                                  <option >Karnatak</option>
                                   <option>Andhra Pradesh</option>
                                    <option >Kolkata</option>
                                      <option >Odisha</option>
                                        <option >Kerala</option>
                            
                        </select> -->
                    </div>


            <label class="control-label col-lg-2">District :<span class="required">*</span></label>
                      <div class="col-lg-2">

                        <select name="district2" id="district2" size="1" class="form-control"></select> <br>
                      <!--  <select class="form-control" id="districtSelect" size="1">
                            <option value="" disabled selected>Choose District</option>                     
                         </select> -->
                      </div>


              <label class="control-label col-lg-2">Taluka :<span class="required">*</span></label>
                      <div class="col-lg-2">

                        <select name="city2" id="city2" size="1" class="form-control"></select>
                        <!-- <select class="form-control">
                            <option value="id">Select Taluka</option>                            
                        </select> -->
                      </div>

                      

                      
                    

                

                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>
         <div class="col-md-12 ">
            <label class="control-label col-lg-4">Complainant / Informant : Permanant Address:</label><br><br>
                      
               <label class="control-label col-lg-2">  Name:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="complainantname"  required style="margin-left: -1%;  width: 105%"
>
                </div>
                <label class="control-label col-lg-3">  Father's / Husband's Name :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="fatherhusbandname"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br>
                <label class="control-label col-lg-2">Birth Date :<span class="required">*</span> </label>
                 <div class="col-lg-2" style="margin-left:-1%" >  
                   <input class="form-control" type="date" name="birthdate" id="birthdate" required style="margin-left: 6%; width: 105%"
>              </div>
            <label class="control-label col-lg-3">  Age:<span class="required">*</span> </label>
                 <div class="col-lg-2" style="margin-left: 1%;">  
                  <input type="text" class="form-control" id="age" onclick ="getAge();" name="age"  required style="margin-left: -1%;  width: 105%" readonly />
                   <!-- <input class="form-control" type="number" name=""  required style="margin-left: -1%;  width: 105%"
> -->
                </div><br><br>
                <label class="control-label col-lg-2"> Phone No. :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                  <!-- <input id="id1" type="number"  onfocusout="myFunction();"> -->
                   <input class="form-control"  type="text" name="phoneno" onkeypress="isInputNumber(event)" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    type = "number" min="10" maxlength = "10"  required style="margin-left: -1%;  width: 105%"
>
                </div>
                 <label class="control-label col-lg-3"> Passport No. :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="passportno" onkeypress="isInputNumber(event)"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br>
                 <label class="control-label col-lg-2">Date Of Issue:<span class="required">*</span> </label>
                 <div class="col-lg-2" style="margin-left:-1%">  
                   <input class="form-control" type="date" name="dateofissue"  required style="margin-left: 6%; width: 105%"
>              </div>
               <label class="control-label col-lg-3">Place Of Issue:<span class="required">*</span> </label>
                 <div class="col-lg-2" style="margin-left: 1%;">  
                   <input class="form-control" type="text" name="placeofissue"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br>
                <label class="control-label col-lg-2">Occupation:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="occupation"  required style="margin-left: -1%;  width: 105%"
>
                </div>
                <label class="control-label col-lg-3">Religion:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
          <select class="form-control" id="ReligionSelect" size="1" name="religion" onchange="makeSubmenu(this.value)">
                          
                                  <option value="" disabled selected>Choose Religion</option>
                                  <option >Hindu</option>
                                  <option >Muslim</option>
                                  <option >Shikh</option>
                                  <option >Isai</option>
                                  <option >Other</option>
                            </select>

                   <!-- <input class="form-control" type="text" name=""  required style="margin-left: -1%;  width: 105%"
> -->
                </div><br><br>
                <label class="control-label col-lg-2">Cast:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <select  class="form-control" id="CastSelect" size="1" name="cast">
                      <option value="" disabled selected>Choose Cast</option>
                      <option></option>
                    </select>
                </div>
                <label class="control-label col-lg-3"> Sub-Cast:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="subcast"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br>
                <label class="control-label col-lg-2">Address:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="address"  required style="margin-left: -1%;  width: 105%"
>
                </div>
                <label class="control-label col-lg-3">Ward:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="ward1" onkeypress="isInputNumber(event)" required style="margin-left: -1%;  width: 105%"
>
                </div><br><br>
                    <label class="control-label col-lg-2">House / Name No:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="housenameno"  required style="margin-left: -1%;  width: 105%"
>
                </div> <label class="control-label col-lg-3">Pan No:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                  <input class="form-control" type="text" name="panno" id="txtPANCard" maxlength="10" minlength="10" onchange="ValidatePAN()" required style="margin-left: -1%;  width: 105%">
                  <!--  <input class="form-control" type="number" name="" id="txtPANCard"  required style="margin-left: -1%;  width: 105%"
> -->
                </div> <br><br>
                <label class="control-label col-lg-2">Voter's card No:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="votercardno" onkeypress="isInputNumber(event)"  required style="margin-left: -1%;  width: 105%"
>
                </div>
                <label class="control-label col-lg-3">Road:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="road"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br>
                <label class="control-label col-lg-2">Nearest Identifiable Place:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="nip1"  required style="margin-left: -1%;  width: 105%"
>
                </div><label class="control-label col-lg-3">Village :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="village1"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br><br>
                <label class="control-label col-lg-2">Post :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="post1" onkeypress="isInputNumber(event)" required style="margin-left: -1%;  width: 105%"
>
                </div><label class="control-label col-lg-3">P. Station :<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="policestation1"  required style="margin-left: -1%;  width: 105%"
>
                </div><br><br><br>

                 <label for="eid" class="control-label col-lg-2">State<span class="required">*</span></label>
                      <div class="col-lg-2">
                        <select name="state3" id="state3" class="form-control" size="1"></select> <br>
                         <!-- <select class="form-control" id="countrySelect" size="1" onchange="makeSubmenu(this.value)">
                            <option value="" disabled selected>Select State</option>
                             <option >Maharashtra</option>
                              <option >Gujrat</option>
                               <option >Delhi</option>
                                <option >Madhya Pradesh</option>
                                 <option >Uttar Pradesh</option>
                                  <option >Karnatak</option>
                                   <option>Andhra Pradesh</option>
                                    <option >Kolkata</option>
                                      <option >Odisha</option>
                                        <option >Kerala</option>
                            
                        </select> -->

              
                         
                      </div>

                      <label class="control-label col-lg-3">District :<span class="required">*</span></label>
                      <div class="col-lg-2">

                        <select name="district3" id="district3" class="form-control" size="1"></select> <br>
                       <!--  <select class="form-control" id="districtSelect" size="1">
                            <option value="" disabled selected>Choose District</option>                     
                         </select> -->
                      </div><br><br><br>

                      
                     <label class="control-label col-lg-2">Taluka :<span class="required">*</span></label>
                      <div class="col-lg-2">
                        <select name="city3" id="city3" class="form-control" size="1"></select>

                        
                       
                    </div>
                    <label for="eid" class="control-label col-lg-3">Nationality<span class="required">*</span></label>
                      <div class="col-lg-2">

                        
                        <select class="form-control" name="nationality">
                            <option value="id">Select Nationality</option>
                             <option value="id">India</option>
                              <option value="id">USA</option>
                               <option value="id">US</option>
                                <option value="id">UK</option>
                                 <option value="id">Japan</option>
                                  <option value="id">Australia</option>
                                                              
                        </select> 
                    </div><br><br><br>
                    <label class="control-label col-lg-2">Present Address :<span class="required">*</span></label>
                      <div class="col-lg-2">
                          <input type="text" name="presentaddress" rows="2" cols="150" class="form-control" >
                          <br>
                      </div>

                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>
         <div class="col-md-12 ">
                      
                      
              <label class="control-label col-lg-10">Perticulars of properties stolen and invloved(attach necessary perforama) write down details on blank page:<span class="required">*</span> </label><br><br>
                 <div class="col-lg-10">  
                   <input class="form-control" type="text" name="perticulars"  required style="margin-left: -1%;width: 105%;height: 70px;">

                </div><br><br>           

                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>
        <div class="col-md-12 ">
             <label class="control-label col-lg-4">Total Values of Properties Stolen /  Involved:<span class="required">*</span> </label>
                 <div class="col-lg-3">  
                   <input class="form-control" type="text" onkeypress="isInputNumber(event)" name="totalvalues"  required 
>
                </div> <br><br>
                <label class="control-label col-lg-4">Recovered Properties:<span class="required">*</span> </label>
                 <div class="col-lg-3">  
                   <input class="form-control" type="text" name="recoveredproperties"  required 
>
                </div>  

                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>
        <div class="col-md-12 ">
             <label class="control-label col-lg-4">Unnatural / Accidental Death Case No. if any<span class="required">*</span> </label>
                 <div class="col-lg-3">  
                   <input class="form-control" type="text" onkeypress="isInputNumber(event)" name="unnaturaldeathcaseno"  required 
>
                </div>  

                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>
        <div class="col-md-12 ">
             <label class="control-label col-lg-4">First Inforation brief contents (Attach seperate sheet. if required): 
              Details write down back blank page<span class="required">*</span> </label>
                 <div class="col-lg-6">  
                   <input class="form-control" type="text" name="firbreif"  required style="margin-left: -1%;width: 105%;height: 90px;"
>
                </div>  <br><br>

                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>
        <div class="col-md-12 ">
             <label class="control-label col-lg-10">Action taken : Since the above information reveals Commision of Offence (s) u/s as mentioned at Iteam No. 2</label><br>
               <label class="control-label col-lg-5">(1) Registered the case and took up the investigation or Directed (Name Of I.O.) to take up the investigation or<span class="required">*</span> </label><br>
                 <div class="col-lg-6">  
                   <input class="form-control" type="text" name="nameofio"  required
>
                </div>  <br><br><br>
                 <label class="control-label col-lg-5">Rank<span class="required">*</span> </label>
                 <div class="col-lg-3">  
                   <input class="form-control" type="text" name="rank"  required>
                </div>  <br><br>
                <label class="control-label col-lg-5">No.<span class="required">*</span> </label>
                 <div class="col-lg-3">  
                   <input class="form-control" type="text" name="no" onkeypress="isInputNumber(event)"  required>
                </div>  <br><br>
                 <label class="control-label col-lg-5"><br>(2) Refused Investigation due to<span class="required">*</span> </label><br>
                 <div class="col-lg-6">  
                   <input class="form-control" type="text" name="refusedinvestigation"  required
>
                </div>  <br><br>
                <label class="control-label col-lg-5"><br>(3) Transferred to P.S.<span class="required">*</span> </label><br>
                 <div class="col-lg-3">  
                   <input class="form-control" type="text" name="transferredto"  required
>
                </div>  <br><br><br>

                 <label class="control-label col-lg-5">State :<span class="required">*</span></label>
                      <div class="col-lg-2">

                        <select name="state4" id="state4" class="form-control" size="1"></select> <br>
                       <!--  <select class="form-control" id="districtSelect" size="1">
                            <option value="" disabled selected>Choose District</option>                     
                         </select>
 -->
                      </div> 

                 <label class="control-label col-lg-1">District :<span class="required">*</span></label>
                      <div class="col-lg-2">

                        <select name="district4" id="district4" class="form-control" size="1"></select> 
                       <!--  <select class="form-control" id="districtSelect" size="1">
                            <option value="" disabled selected>Choose District</option>

                         </select> -->
                           <label><br>On point of jurisdiction </label><br><br>
                           <select name="city4" id="city4" style="display: none;"></select>
                      </div> 

                    
                     
                     <label class="control-label col-lg-12">F.I.R read over to the Compalinant /Informant,adimitted to be correctly recorded and a copy given to the  Compalinant /Informant, free of cost </label><br><br>


                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div>
                   <hr>
 
        </div>
                
          <div class="col-md-12 ">
             <label class="control-label col-lg-3">Signature and Thumb Impression of the Complainant / Informant<span class="required">*</span> </label><br>
                 <div class="col-lg-3">  
                   <input class="form-control" type="text" name="signthumbofcomplainant"  required 
>
                </div>  
                <label class="control-label col-lg-4">Signature of Officer In-Charge, Police Station<span class="required">*</span> </label><br><br>
                <label class="control-label col-lg-7">Name</label>
                 <div class="col-lg-4">  
                   <input class="form-control" type="text" name="name"  required 
>
                </div><br>
                <label class="control-label col-lg-7">Rank</label><br>
                 <div class="col-lg-4">  
                   <input class="form-control" type="text" name="rank1"  required 
>
                </div>  <br>
                <label class="control-label col-lg-7">Posting Code No. Of I.O.</label><br>
                 <div class="col-lg-4">  
                   <input class="form-control" type="text" name="postingcodenoofio"  required 
>
                </div>  
 
                    <label class="control-label col-lg-2"></label >
                  <div class="col-md-2">
                    
                   </div><br><br><br>
                   <hr>
 
        </div>
                <div class="form-group">
                      <center><div>
              <button type="submit" class="register">Register</button>
               <button type="reset" class="cancel">Cancel</button>

            </div></center>
               </div><br>


   
        </div>

   

        </div></div>


        </div>




            </form>
          </div>

    </div>
            </section>
          </div>
        </div>
        
                    
                  
                </div>
            
        
        <!-- page end--><!-- 
      </section>
    </section> -->

    <!--main content end-->
    
 
  <!-- container section end -->

  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- jquery validate js -->
  <script type="text/javascript" src="js/jquery.validate.min.js"></script>

  <!-- custom form validation script for this page-->
  <script src="js/form-validation-script.js">
  </script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>


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
                 $('#blah').attr('src','');

            }
        }
    }
</SCRIPT>


</body>
</html>