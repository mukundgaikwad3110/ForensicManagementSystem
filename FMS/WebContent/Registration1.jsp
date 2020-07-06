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

  <title>Employee Registration Form</title>
   <script>


<!--numeric value-->
function isInputNumber(evt){
    var ch=String.fromCharCode(evt.which);
    if(!(/[0-9]/.test(ch))){
      evt.preventDefault();
    }
  }
  
  
  
</script>

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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>

  
  <script src="E:/TEchProj/NiceAdmin/js/showDesignation">
  

  </script>
  
  
  </head>
<body>
<div class="container" style="" >
  <!-- container section start -->
 <!--  <section id="container" class=""> -->
    <!--main content start-->
        <!-- Form validations -->
        <div class="row">
          <div class="col-lg-12">
            <section class="panel" id="panel-image" style="height: 871px;">
              <header class="panel-heading">
                Form validations
              </header>
              <div class="panel-body" id="hero-image" style="height: 871px;">
                <div class="form">
                  <form class="form-validate form-horizontal"  method="post" action="RegServlet1" enctype="multipart/form-data">
               <div class="form-group" >
                   <div class="col-md-12 ">
               <div class="col-lg-6">
                           <label for="Lawyer" class="control-label col-lg-4">First Name<span class="required">*</span></label>
                      <div class="col-lg-6">
                        <input class="form-control" id="fname" name="f_name"  type="text" required />
                      </div><br><br>

                      <label for="Lawyer" class="control-label col-lg-4">Middle Name<span class="required">*</span></label>
                      <div class="col-md-6">
                        <input class="form-control" id="mname" name="m_name"  type="text" required />
                      </div><br><br>
              
                      <label for="Lawyer" class="control-label col-lg-4">Last Name<span class="required">*</span></label>
                      <div class="col-lg-6">
                        <input class="form-control" id="lname" name="l_name"  type="text" required />
                      </div>
                      </div>

                  <div class="col-lg-6">
                          <div>
                           <img src="nophoto.png" id="blah" width="100" height="100">
                          </div>     
                         <input type="file"  id="fileChooser" name="image" onchange="ValidateFileUpload()">
                   </div>
                </div>
              </div>
					 <div class="form-group ">
                      <label for="caddress" class="control-label col-lg-2">Permanat Address<span class="required">*</span></label>
                      <div class="col-lg-4">
                          <textarea rows="2" cols="80" class="form-control" name="address" > </textarea>
                     </div>
                      <label for="caddress" class="control-label col-lg-2" style="margin-top:10px;">ZipCode<span class="required">*</span></label>
                      <div class="col-lg-2">
                            <input class="form-control" id="zipcode" name="zipcode"  type="tel" style="margin-top:10px;" onkeypress="isInputNumber(event)" required />
                         
                      </div>
                </div>

                  <div class="form-group ">
                      <label for="cgender" class="control-label col-lg-2">Gender <span class="required">*</span></label>
                    <div class="col-lg-2">
                      <div class="custom-control">  
                        <input type="radio" class="custom-control-input" id="defaultUnchecked" name="gender" value="male">
                        <label class="custom-control-label" for="defaultUnchecked">Male</label>
                      </div>
                      <div class="custom-control ">
                          <input type="radio" class="custom-control-input" id="defaultChecked" name="gender" value="female">
                          <label class="custom-control-label" for="defaultChecked">Female</label>
                       </div>
                      </div>
                       <label for="maritalstatus" class="control-label col-lg-2">Marital Status <span class="required">*</span></label>
                         <div class="col-lg-2">
                         <div class="custom-control custom-radio">
                          <input type="radio" class="custom-control-input" id="defaultUnchecked" name="maritalstatus" value="married">
                          <label class="custom-control-label" for="defaultUnchecked">Married</label>
                         </div>
                        <div class="custom-control custom-radio">
                      <input type="radio" class="custom-control-input" id="defaultChecked" name="maritalstatus" value="unmarried">
                      <label class="custom-control-label" for="defaultChecked">Un-married</label>
                       
                      </div>
                    </div>
        </div>  

                <div class="form-group ">        
                    <label for="mobile number" class="control-label col-lg-2">Mobile Number<span class="required">*</span></label>
                  <div class="col-lg-2">
         <input class="form-control" type="tel" name ="m_number" id="number" pattern="{0-9}{10}" maxlength=10 minlength="10" onkeypress="isInputNumber(event)" required/> 
                             </div>

                  <label for="cemail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                    <div class="col-lg-4">
                        <input class="form-control " id="cemail" type="email" name="email" required />
                    </div>
              </div>

              <div class="form-group ">  
                  <label for= "cbirth" class="control-label col-lg-2"> DOB:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="date" name="date"  id ="dob" onchange="agefinding();" required>
                </div>

                 <label for= "age" class="control-label col-lg-2"> Age:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="age"  id = "age" readonly>
                </div>

            </div>

            <div class="form-group ">
                  <label for="cqualification" class="control-label col-lg-2">Highest Qualification:<span class="required">*</span></label>
                  <div class="col-lg-2">
                         <select class="form-control" name="degree">
                            <option value=""></option>
                            <option value="Masters">Masters</option>
                            <option value="Bachelor">Bachelor</option>
                            <option value="HSC">HSC</option>
                            <option value="SSC">SSC</option>
                          </select>
                  </div>

                  <label for= "specialization" class="control-label col-lg-2"> Specialization:<span class="required">*</span> </label>
                 <div class="col-lg-2">  
                   <input class="form-control" type="text" name="specialization"  required>
                </div>
            </div>

            <div class="form-group ">
                  <label for="designation" class="control-label col-lg-2">Designation:<span class="required">*</span> </label>
                <div class="col-lg-2">  
                    <select class="form-control" onchange="myFunction(this)" name="designation">
                        <option value="Choose Designation">Choose Designation</option>
                        <option value="Officer">Officer</option>
                        <option value="Supervisor">Supervisor</option>
                        <option value="Guest" id="GuestOption" value="0">Guest</option>
                    </select>
                </div>

                <div class="form-group " id="GuestDivCheck" style="display:none;">  
                  <label for="designation" class="control-label col-lg-2">Department:<span class="required">*</span> </label>
                <div class="col-lg-2" >  
                    <select class="form-control" name="department">
                        <option value="Police">Choose Department</option>
                        <option value="Laboratory">Laboratory</option>
                        <option value="police">Police</option>
                        
                    </select>
                </div>
            </div>
            

          </div>

            <div class="form-group ">  
                  <label for="Adhar_Number" class="control-label col-lg-2">Adhar Number:<span class="required">*</span> </label>
                <div class="col-lg-2"> 
                    <input class="form-control" id="adhar" name="adhar_num" type="tel" maxlength="12" minlength="12"  onkeypress="isInputNumber(event)"required /><br><br>
                </div>
                  <label for="Adhar_Number" class="control-label col-lg-2">PAN Number:<span class="required">*</span> </label>
                <div class="col-lg-2">  
                    <input class="form-control" name="txtPANCard" type="text" id="txtPANCard" maxlength="10" minlength="10" onchange="ValidatePAN()" style="text-transform:uppercase;" required /><span id="lblPANCard" style="color: Red;
        visibility: hidden;">Invalid PAN Number</span><br><br>
                </div>
            </div>
    <center><div>
              <button type="submit" value="submit" name="submit" class="register" btn btn-primary>Register</button>
               <button type="reset" class="cancel">Cancel</button> 
             <script>
function myFunction(nameSelect) {
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

            </div></center>
                  </form>
                </div>

              </div>
            </section>
          </div>
        </div>    
  </section>
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
   
</SCRIPT>





</body>
</html>