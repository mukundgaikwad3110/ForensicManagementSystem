<span class="select-icon"><i class="zmdi zmdi-chevron-down" 
                                style="margin-top: 25px;margin-right: 16px;"></i></span><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.*,java.text.*" %>
<%@ page import="java.io.*,java.util.Date"%>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lawyer Registration Form</title>

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
<% 
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";
Connection conn=null;
ResultSet rs = null;
Statement st = null;
 PreparedStatement pstmt = null;
 String id=request.getParameter("lawyer_id");
 out.println(id);
 String username=request.getParameter("username");

try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);
String query="select * from lawyerdetails where lawyer_id=" +id; 

st=conn.createStatement();
rs=st.executeQuery(query);

if(rs.next()){

	%>
    <center><h2 style="color: white;">View Lawyer Form</h2></center>

    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img" style="width: 500px;">
                    <img src="img/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form" style="padding-left: 100px;" action="LawyerRegistration" enctype="multipart/form-data">
                        <!-- style="width:1117px;" -->
                        
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="f_name">First Name :</label>
                                <input type="text" name="firstname" id="firstname" style="width: 216px;" value="<%=rs.getString(2)%>" required/><br>


                                 <label for="m_name">Middle Name :</label>
                                <input type="text" name="middlename" id="middlename" style="width: 216px;" value="<%=rs.getString(3)%>"required/><br>

                                <label for="l_name">Last Name :</label>
                                <input type="text" name="lastname" id="lastname" style="width: 216px;" value="<%=rs.getString(4)%>" required/><br>
                            </div>
                            
                           
                            
                    <div class="form-group" style="padding-left: 50px;/* margin-right: 1px; */
    /* margin-left: 0px; */
">
                          <div >
                           <img src="GetLawyerImage.jsp?id=<%=id%>" id="blah" width="200" height="200">
                          </div>     
                          
                       </div>   
                            
                        </div>
                         <div class="form-row">
                        <div class="form-group" style="width: 300px;">
                            <label for="address">Permanant Address :</label>
                            <input type="text" name="address" id="address" style="width: 300px;" value="<%=rs.getString(6)%>" required/>
                        </div>
                        
                    </div>
 <div class="form-radio">
                            <label for="gender" class="radio-label">Gender:</label>
                            <div class="form-radio-item">
                                <input type="text" name="gender" id="male"value="<%=rs.getString(7)%>" style="width: 118px;" readonly>
                               
                                
                            </div>
                           
                        
                            <label for="gender" class="radio-label" style="margin-left: -12px;">Marrital Status:</label>
                            <div class="form-radio-item">
                              <input type="text" name="maritalstatus" id="married" value="<%=rs.getString(8)%>" style="width: 115px;
    margin-left: -26px;
" readonly> 
                                
                              
                            </div>
                            
                        </div>
					     <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                            <label for="m_number">Mobile No. :</label>
                            <input type="text" name="m_number" id="m_number"  value="<%=rs.getString(9)%>"  pattern="{0-9}{10}" maxlength=10 minlength="10" onkeypress="isInputNumber(event)" readonly />
                        </div>
                            <div class="form-group" style="padding-left: 63px;">
                            <label for="email" style="margin-left: -23px;">Email ID :</label>
                            <input type="email" name="email" id="email"style="margin-left: -29px;width: 227px;padding-left: 13px;" value="<%=rs.getString(10)%>" readonly/>
                        </div>
                    </div>
                     <div class="form-row">
                     <div class="form-group" style="width: 300px;">
                            <label for="date">DOB :</label>
                            <input type="date" name="date" id="dob"  value="<%=rs.getString(11)%>" style="width: 222px;" readonly>
                        </div>
                        <div class="form-group">
                            <label for="age">Age :</label>
                            <input type="text" name="age" id="age"  value="<%=rs.getString(12)%>" readonly>
                        </div>
                    </div>



                          
                        


                          
                        
                         <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="highest_qualification">Highest Qualification :</label>
                                <div class="form-select" style="width: 200px;">
                                <input type="text"   value="<%=rs.getString(13)%>" readonly>
                                   
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                                
                            </div>
                           
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="lawyertype">Lawyer Type Name:</label>
                                <div class="form-select" style="width: 200px;">
                                    <input type="text"   value="<%=rs.getString(14)%>" readonly>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                                
                            </div>
                            <div class="form-row" style="padding-left: 15px;">
	                            <div class="form-group"  style="width: 238px;">
	                                <label for="lbrd">Lawyer Bar Registration Date:</label>
	                                <input type="date" name="lbrd" id="lbrd"  value="<%=rs.getString(15)%>" style="width: 216px;"/>
	                            </div>  
                           
                        </div> 
                            
                            
                        </div>
                        
                        <!-- <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Register" class="submit" name="submit" id="submit"  />
                        </div> -->

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