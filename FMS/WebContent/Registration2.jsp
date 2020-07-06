<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Employee Registration Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts1/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
    <script type="text/javascript">
    <!--numeric value-->
function isInputNumber(evt){
    var ch=String.fromCharCode(evt.which);
    if(!(/[0-9]/.test(ch))){
      evt.preventDefault();
    }
  }
</script>
<!-- <script type = "text/javascript">
        
            function getConfirmation() {
               var retVal = confirm("Do you want to continue ?");
               if( retVal == true ) {
                 /*  document.write ("User wants to continue!"); */
               window.location = ('RegServlet1');
                  return true;
               }
               else {
                  /* document.write ("User does not want to continue!"); */
                  window.location = ('Registration2.jsp');
                  return false;
               }
            }

      </script> -->
</head>
<body>
    <center><h2 style="color: white;">Employee registration form</h2></center>

    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img" style="width: 500px;">
                    <img src="img/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form" style="padding-left: 100px;" action="RegServlet1" enctype="multipart/form-data">
                        <!-- style="width:1117px;" -->
                        
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="f_name">First Name :</label>
                                <input type="text" name="f_name" id="f_name" style="width: 216px;"required/><br>


                                 <label for="m_name">Middle Name :</label>
                                <input type="text" name="m_name" id="m_name" style="width: 216px;"required/><br>

                                <label for="l_name">Last Name :</label>
                                <input type="text" name="l_name" id="l_name" style="width: 216px;" required/><br>
                            </div>
                            
                           
                            
                    <div class="form-group" style="padding-left: 50px;/* margin-right: 1px; */
    /* margin-left: 0px; */
">
                          <div >
                           <img src="nophoto.png" id="blah" width="100" height="100">
                          </div>     
                         <input type="file"  id="fileChooser" name="image" onchange="ValidateFileUpload()" style="width: 222px;padding-left: 5px;"> 
                       </div>   
                            
                        </div>
                         <div class="form-row">
                        <div class="form-group" style="width: 300px;">
                            <label for="address">Permanant Address :</label>
                            <input type="text" name="address" id="address" style="width: 300px;"required/>
                        </div>
                        <div class="form-group">
                            <label for="zipcode">ZipCode :</label>
                            <input type="text" name="zipcode" id="zipcode" style="width: 250px;"required onkeypress="isInputNumber(event)" />
                        </div>
                    </div>
                        <div class="form-radio">
                            <label for="gender" class="radio-label">Gender:</label>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="male" value="male" checked>
                                <label for="male">Male</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="female" value="female">
                                <label for="female">Female</label>
                                <span class="check"></span>
                            </div>
                        <!-- </div>
                        <div class="form-radio"> -->
                            <label for="gender" class="radio-label">Marrital Status:</label>
                            <div class="form-radio-item">
                                <input type="radio" name="maritalstatus" id="married" value="married" checked>
                                <label for="married">Married</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="maritalstatus" id="unmarried" value="unmarried">
                                <label for="unmarried">Unmarried</label>
                                <span class="check"></span>
                            </div>
                        </div>


                        <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                            <label for="m_number">Mobile No. :</label>
                            <input type="text" name="m_number" id="m_number" style="width: 200px;" pattern="{0-9}{10}" maxlength=10 minlength="10" onkeypress="isInputNumber(event)" />
                        </div>
                            <div class="form-group" style="padding-left: 63px;">
                            <label for="email">Email ID :</label>
                            <input type="email" name="email" id="email" style="width: 280px;" required/>
                        </div>
                    </div>
                     <div class="form-row">
                     <div class="form-group" style="width: 300px;">
                            <label for="date">DOB :</label>
                            <input type="date" name="date" id="dob" style="width: 200px;" onchange="agefinding();">
                        </div>
                        <div class="form-group">
                            <label for="age">Age :</label>
                            <input type="text" name="age" id="age" style="width: 200px;" readonly>
                        </div>
                    </div>



                          
                        
                        <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="highest_qualification">Highest Qualification :</label>
                                <div class="form-select" style="width: 200px;">
                                    <select name="degree" id="highest_qualification" >
                                        <option value=""></option>
                                        <option value="Masters">Masters</option>
                                        <option value="Batchlor">Batchlor</option>
                                        <option value="HSC">HSC</option>
                                        <option value="SSC">SSC</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                                
                            </div>
                            <div class="form-group" style="padding-left: 15px;">
                                <label for="Specialiazation">Specialiazation :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input type="text" name="specialization" id="specialiazation">
                                  
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="Designation">Designation :</label>
                                <div class="form-select" style="width: 200px;">
                                    <select onchange="myFunction(this)" name="designation" >
                                        <option value=""></option>
                                        <option value="Supervisor">Supervisor</option>
                                        <option value="Officer">Officer</option>
                                        <option value="Guest" id="GuestOption" value="0">Guest</option>
                                        
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                                
                            </div>
                            <div class="form-group" id="GuestDivCheck" style="display:none ;">
                                <label for="department">Department :</label>
                                <div class="form-select" style="width: 200px ">
                                    <select name="department" id="department">
                                        <option value="Police">Choose Department</option>
                                        <option value="Laboratory">Laboratory</option>
                                        <option value="police">Police</option>
                                        
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                                
                            </div> 

                        </div>
                        <div class="form-row">
                            <div class="form-group"  style="width: 300px;">
                                <label for="adhar_num">Adhar No :</label>
                                <input type="text" name="adhar_num" id="adhar_num" style="width: 216px;"
/>
                            </div>  
                            <div class="form-group" >
                                <label for="txtPANCard">Pan No :</label>
                                <input type="text" name="txtPANCard" id="txtPANCard" style="width: 216px;" maxlength="10" minlength="10" onchange="ValidatePAN()"required/>
                                <span id="lblPANCard" style="color: Red;
                                visibility: hidden;">Invalid PAN Number</span>
                            </div>  
                        </div> 

                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Register" class="submit" name="submit" id="submit"  />
                        </div>

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