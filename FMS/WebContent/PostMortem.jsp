<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Post Mortam Form</title>

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
<%
String ncrno=request.getParameter("ncrno");
%>
<body>
<center><h2 style="color: white;">Post Mortam Form</h2></center>
<input type="hidden" name="ncrno" value=<%=request.getParameter("ncrno")%>>
    <div class="main">

        <div class="container" style="width:1200px;">
            <div class="signup-content">
               <!--  <div class="signup-img" style="width: 500px;">
                    <img src="images/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div> -->
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form"  style="   padding-left: 100px;" action="PostMortem1.jsp?ncrno=<%=request.getParameter("ncrno")%>">
                        <!-- style="width:1117px;" -->
                        
                        
                    <div class="form-row">
						
						<!-- <div class="form-group" style="width: 300px;">
                            <label for="pmrptno">Post Mortam Report  No. :</label>
                            <input type="text" name="pmrptno" id="pmrptno" style="width: 200px;"  onkeypress="isInputNumber(event)" required />
                        </div> -->
                        <div class="form-group" style="width: 300px;">
                            <label for="date">Date :</label>
                            <input type="date" name="date" id="date" style="width: 200px;" required>
                        </div>

                        <div class="form-group" style=" margin-left: 180px;width: 300px;">
                            <label for="bname">Body Name :</label>
                            <input type="text" name="bname" id="bname" style="width: 250px;" required>
                        </div>
                        

                        

                    </div>
                          <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="acts">Conducted By Dr.:</label>
                                <input type="text" name="drname" id="drname" style="width: 216px;"required/><br>

                            </div><br><br>
                            
                            <div class="form-group" style="width: 300px;margin-left: 160px; ">
                            
                                <label for="dtedb" style="width:500px;">Date and Time Of Examination of Dead Body :</label>
                                <input type="date" name="dtedb" id="dtedb" style="width: 216px;" required/>
                            	<input type="Time" name="time" id="time" style="width: 216px;margin-top: -44px;margin-left: 247px;" required/><br>
                            </div>
                        </div>
                        <label >Case Perticulars. :</label><br>
                      
                      <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label style="width:500px;">Name of deceased and as entered in Jail Or Police Record:</label>
                                <input type="text" name="nod" id="nod" style="width: 280px;"required/><br>

                            </div><br>
                            <div class="form-group" style="width: 300px; margin-left: 160px;">
                                <label for="address">Address :</label>
                                <input type="address" name="address" id="address" style="width: 216px;" required/><br>

                            </div>
                        </div>


                      
                      <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label >Age :</label>
                                <input type="text" name="age" id="age" style="width: 216px;"required/><br>

                            </div>
                            <div class="form-group" style="width: 300px; margin-left: 160px;">
                                <label for="gender" style="">Gender:</label>
                                <input type="text" name="gender" id="gender" style="width: 216px;" required/><br>
                                
                            </div>
                        </div>
                
                <div class="form-row">
                    <div class="form-group" >
                         <label for="bbb" style="width:500px;">Body Brought By (Name And Rank of Police Officials)	 :</label>
                         <input type="text" name="bbb" id="bbb"style="width: 300px;" required/><br>
                    </div>
                     <div class="form-group" style="width: 300px; margin-left: 160px;">
                         <label for="bbb" style="width:500px;">Identified By (Name And Address Of relatives/persons acquainted) :</label>
                         <input type="text" name="identy" id="identy"style="width: 300px;" required/><br>
                    </div>

                </div>
                
                <label for="bbb" style="width:500px;">Schedule of Observation : General :</label>
                <div class="form-row">
               
                    <div class="form-group" >
                         <label for="length" style="width:500px;">Length :</label>
                         <input type="text" name="length" id="length"style="width: 300px;" required/><label style="margin-top:-30px;margin-left:210px;">cms.</label><br>
                    	
                    </div>
                     <div class="form-group" style="width: 300px; margin-left: 160px;">
                         <label for="weight" style="width:500px;">Weight:</label>
                         <input type="text" name="weight" id="weight"style="width: 300px;" required/> <label style="margin-top:-30px;margin-left:210px;">kg.</label><br>
                    </div>

                </div>
                
                <div class="form-row">
                    <div class="form-group" >
                         <label for="physique" style="width:500px;">Physique(lean/medium/obese):</label>
                         <input type="text" name="physique" id="physique"style="width: 300px;" required/><br>
                    </div>
                     <div class="form-group" style="width: 300px; margin-left: 160px;">
                         <label for="idfeatures" style="width:500px;">Identification Features (if Body is not identified):</label>
                         <input type="text" name="idfeatures" id="idfeatures"style="width: 300px;" required/><br>
                    </div>

                </div>
                
                <div class="form-row">
                    <div class="form-group" >
                         <label for="clothes" style="width:500px;">Description of clothes worn- important features:</label>
                         <input type="text" name="clothes" id="clothes"style="width: 300px;" required/><br>
                    </div>
                     <div class="form-group" style="width: 300px; margin-left: 160px;">
                         <label for="coe" style="width:500px;">External appearance:</label>
                         <input type="text" name="coe" id="coe"style="width: 300px;" placeholder="condition of eyes" required/><br>
                    	<input type="text" name="no" id="no"style="width: 300px;" placeholder="Natural orifices(Mouth,Nosily,Ears)" required/><br>
                    	<input type="text" name="nails" id="nails"style="width: 300px;" placeholder="Nails" required/><br>
                     </div>

                </div>
                 <div class="form-row">
                    <div class="form-group" >
                         <label for="bbb" style="width:500px;">Internal Examination:</label><br>
                          <label for="bbb" style="width:500px;">Head:</label>
                         <input type="text" name="scalp" id="scalp"style="width: 300px;" placeholder="Scalp Finding" required/><br>
                    	<input type="text" name="skull" id="skull"style="width: 300px;" placeholder="Skull" required/><br>
                    	<input type="text" name="brain" id="brain"style="width: 300px;" placeholder="Brain Finding And Wts (wt______gms)" required/><br>
                    </div>
                    
                     <div class="form-group" style="width: 300px; margin-left: 130px;"><br><br>
                         <label for="coe" style="width:500px;">Neck:</label>
                         <input type="text" name="mouth" id="mouth"style="width: 300px;" placeholder="mouth,Toungue & Pharynx" required/><br>
                    	<input type="text" name="vocalcords" id="vocalcords"style="width: 300px;" placeholder="larynx & Vocal Cords" required/><br>
                    	<input type="text" name="necktissues" id="necktissues"style="width: 300px;" placeholder="condition of neck tissues" required/><br>
                     	<input type="text" name="thyroid" id="thyroid"style="width: 300px;" placeholder="Thyroid & other cartilage conditions" required/><br>
                     </div>
                     
                     <div class="form-group" style="width: 300px; margin-left: 50px;"><br><br>
                         <label for="coe" style="width:500px;">Chest:</label>
                         <input type="text" name="ribs" id="ribs"style="width: 300px;" placeholder="Ribs & chest wall" required/><br>
                    	<input type="text" name="oesophagus" id="oesophagus"style="width: 300px;" placeholder="Oesophagus" required/><br>
                    	<input type="text" name="trachea" id="trachea"style="width: 300px;" placeholder="Trachea & Bronchial Tree" required/><br>
                     	<input type="text" name="diaphragm" id="diaphragm"style="width: 300px;" placeholder="Diaphragm" required/><br>
                     	<input type="text" name="pleural" id="pleural"style="width: 300px;" placeholder="Pleural Cavities (-R- , -L-)" required/><br>
                    	<input type="text" name="lungs" id="lungs"style="width: 300px;" placeholder="Lungs findings & wts -Rt.____gms. & -Lt.____gms" required/><br>
                     	<input type="text" name="heart" id="heart"style="width: 300px;" placeholder="Heart Findings & wt._____" required/><br>
                     	<input type="text" name="lbv" id="lbv"style="width: 300px;" placeholder="Large blood vessels" required/><br>
                     </div>
                     
                     

                </div>
                <div class="form-row">
                    <div class="form-group" >
                         <label for="bbb" style="width:500px;">Abdomen:</label><br>
                         
                        <input type="text" name="coaw" id="coaw"style="width: 300px;" placeholder="condition of abdominal wall" required/><br>
                        <input type="text" name="spleen" id="spleen"style="width: 300px;" placeholder="Spleen (Wt____gms)" required/><br>
                    </div>
                    
                     <div class="form-group" style="width: 300px; margin-left: 80px;"><br><br>
                         
                        <input type="text" name="stomach" id=sStomach"style="width: 420px;" placeholder="Stomach (wall condition,content & smell) (Wt_______gms)" required/><br>
  						<input type="text" name="kidneys" id="kidneys"style="width: 420px;" placeholder="Kidneys findings & wt (-Rt. ___gms And -Lt. ___gms)" required/><br>                   
                     </div>
                     
                     <div class="form-group" style="width: 300px; margin-left: 140px;"><br><br>
                        
                         <input type="text" name="gall" id="gall"style="width: 300px;" placeholder="Line including Gall bladder (wt_____gms)" required/><br>
                    	
                     </div>
                     
                     

                </div>
                
                 <div class="form-row">
                    <div class="form-group" >
                        
                    </div>
                    
                      <div class="form-group" style="width: 300px; margin-left: 130px;"><br><br>
                        
                     </div> 
                     
                     <div class="form-group" style="width: 300px; margin-left: 560px;"><br><br>
                        
                         <input type="text" name="signaturemo" id="signaturemo"style="width: 320px;" placeholder="Signature" required/><br>
                    	<input type="text" name="nomo" id="nomo"style="width: 320px;" placeholder="Name of Medical Officer (in Block Letters)" required/><br>
                    	<input type="text" name="designation" id="designation"style="width: 320px;" placeholder="Designation" required/><br>
                     	
                     	
                     </div>
                     
                </div>
                 <div class="form-row">
                    <div class="form-group" >
                        <label>Received By IO.</label>
                         <input type="text" name="signatureio" id="signatureio"style="width: 320px;" placeholder="Signature" required/><br>
                    	<input type="text" name="nameio" id="nameio"style="width: 320px;" placeholder="Name" required/><br>
                    	<input type="text" name="rank" id="rank"style="width: 320px;" placeholder="Rank" required/><br>
                     	<input type="text" name="beltno" id="beltno"style="width: 320px;" placeholder="Belt No" required/><br>
                     	<input type="text" name="policestation" id="policestation"style="width: 320px;" placeholder="Police Station" required/><br>
                    </div>
                    
                      <div class="form-group" style="width: 300px; margin-left: 130px;"><br><br>
                        
                     </div> 
                     
                     <div class="form-group" style="width: 300px; margin-left: 560px;"><br><br>
                        
                     	
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