<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>NCR</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

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

</head>

<body>
<center><h2 style="color: white;">Non -  Conginzible Report </h2></center>

    <div class="main">

        <div class="container">
            <div class="signup-content">
               <!--  <div class="signup-img" style="width: 500px;">
                    <img src="images/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div> -->
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form"  style="   padding-left: 100px;" action="NCR1.jsp">
                        <!-- style="width:1117px;" -->
                        
                        
                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                            <label for="date">Date :</label>
                            <input type="date" name="date" id="date" style="width: 200px;">
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="ncrno">NCR No. :</label>
                            <input type="text" name="ncrno" id="ncrno" style="width: 200px;"  onkeypress="isInputNumber(event)" />
                        </div>

                        <div class="form-group" style="margin-left: 180px;"">
                            <label for="policestation">Police Station:</label>
                            <input type="text" name="policestation" id="policestation" style="width: 216px;"required/><br>
                        </div>

                    </div>
                          <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="acts">Acts:</label>
                                <input type="text" name="acts" id="acts" style="width: 216px;"required/><br>

                            </div><br>
                            <div class="form-group" style="width: 300px;margin-left: 160px; ">
                                <label for="section">Section :</label>
                                <input type="text" name="section" id="section" style="width: 216px;" required/><br>
                            </div>
                        </div>
                        <label >information Recieved At P.S. :</label><br>
                      
                      <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="date1">Date:</label>
                                <input type="date" name="date1" id="date1" style="width: 216px;"required/><br>

                            </div><br>
                            <div class="form-group" style="width: 300px; margin-left: 160px;">
                                <label for="time">Time :</label>
                                <input type="Time" name="time" id="time" style="width: 216px;" required/><br>

                            </div>
                        </div>


                      
                      <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label >Name & Residence of Complainant :</label>
                                <input type="text" name="nameofcomplainant" id="nameofcomplainant" style="height: 104px;width: 216px;margin-left: 290px;margin-top: -19px;width: 219px;"required/><br>

                            </div><br>
                            <div class="form-group" style="width: 300px; margin-left: 250px;">
                                <label for="nameofwitness" style="margin-left: -48px;">Name & Full Address of Witness :</label>
                                <input type="text" name="nameofwitness" id="nameofwitness" style="width: 216px;margin-left: 211px;height: 116px;margin-top: -20px;" required/><br>
                                
                            </div>
                        </div>
                
                <div class="form-row">
                    <div class="form-group">
                         <label for="complaint">Complaint in Brief :</label>
                         <input type="text" name="complaint" id="complaint"style="height: 155px;width: 450px;margin-left: 160px;margin-top: -19px;" required/><br>
                    </div>

                </div>






                        <div class="form-submit">
                            <input type="submit" value="Cancel" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Register" class="submit" name="submit" id="submit" />
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