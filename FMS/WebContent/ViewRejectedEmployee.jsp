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
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts1/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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



<% 
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";
Connection conn=null;
ResultSet rs = null;
Statement st = null;
 PreparedStatement pstmt = null;
 String reg_id=request.getParameter("reg_id");
 String username=request.getParameter("username");
 /* String dt = request.getParameter("date");
 String dateParts[] = dt.split("-");
	String month  = dateParts[0];
	String day  = dateParts[2];
	String year = dateParts[1];  */

try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);
String query="select * from rejectlist1 where reg_id="+reg_id;

st=conn.createStatement();
rs=st.executeQuery(query);

if(rs.next()){

	%>

    <center><h2 style="color: white;">Employee registration form</h2></center>

    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img" style="width: 500px;">
                    <img src="img/police3.jpg" alt="" style="width: 500px; height: 1223px;">
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form" style="padding-left: 100px;"  action="PermanentEmployee.jsp?reg_id=<%=rs.getInt(1)%>&date=<%=rs.getString(12)%>&username=<%=rs.getString(11)%>&password="<%=rs.getString(11)%>_<%=rs.getString(12)%>"" enctype="multipart/form-data" name="pgenerate">
                     <!--  -->
                        
                        
                        <div class="form-row">
                            <div class="form-group">
                            <input type="hidden" name="reg_id" id="reg_id" value=<%=request.getParameter("reg_id")%> >
                                <label for="f_name">First Name :</label>
                                <input type="text" name="f_name" id="f_name" value="<%=rs.getString(2)%>" readonly/><br>


                                 <label for="m_name">Middle Name :</label>
                                <input type="text" name="m_name" id="m_name" value="<%=rs.getString(3)%>"readonly/><br>

                                <label for="l_name">Last Name :</label>
                                <input type="text" name="l_name" id="l_name" value="<%=rs.getString(4)%>" readonly/><br>
                            </div>
                            
                           
                            
                    <div class="form-group" style="padding-left: 50px;/* margin-right: 1px; */
    /* margin-left: 0px; */
">
                          <div >
                        <img src="GetRejectedImage.jsp?id=<%=reg_id%>" width="200px" style="margin-top: 26px;height: 220px;
"> 
                          </div>     
                         <!-- <input type="file"  id="fileChooser" name="image" onchange="ValidateFileUpload()" style="width: 222px;padding-left: 5px;"> --> 
                       </div>   
                            
                        </div>
                         <div class="form-row">
                        <div class="form-group" style="width: 300px;">
                            <label for="address">Permanant Address :</label>
                            <input type="text" name="address" id="address" value="<%=rs.getString(6)%>"readonly/>
                        </div>
                        <div class="form-group">
                            <label for="zipcode">ZipCode :</label>
                            <input type="text" name="zipcode" id="zipcode" value="<%=rs.getString(7)%>"readonly />
                        </div>
                    </div>
                        <div class="form-radio">
                            <label for="gender" class="radio-label">Gender:</label>
                            <div class="form-radio-item">
                                <input type="text" name="gender" id="male"value="<%=rs.getString(8)%>" style="width: 118px;" readonly>
                               
                                
                            </div>
                           
                        
                            <label for="gender" class="radio-label" style="margin-left: -12px;">Marrital Status:</label>
                            <div class="form-radio-item">
                              <input type="text" name="maritalstatus" id="married" value="<%=rs.getString(9)%>" style="width: 115px;
    margin-left: -26px;
" readonly> 
                                
                              
                            </div>
                            
                        </div>
					     <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                            <label for="m_number">Mobile No. :</label>
                            <input type="text" name="m_number" id="m_number"  value="<%=rs.getString(10)%>"  pattern="{0-9}{10}" maxlength=10 minlength="10" onkeypress="isInputNumber(event)" readonly />
                        </div>
                            <div class="form-group" style="padding-left: 63px;">
                            <label for="email" style="margin-left: -23px;">Email ID :</label>
                            <input type="email" name="email" id="email"style="margin-left: -29px;width: 227px;padding-left: 13px;" value="<%=rs.getString(11)%>" readonly/>
                        </div>
                    </div>
                     <div class="form-row">
                     <div class="form-group" style="width: 300px;">
                            <label for="date">DOB :</label>
                            <input type="date" name="date" id="dob"  value="<%=rs.getString(12)%>" style="width: 222px;" readonly>
                        </div>
                        <div class="form-group">
                            <label for="age">Age :</label>
                            <input type="text" name="age" id="age"  value="<%=rs.getString(13)%>" readonly>
                        </div>
                    </div>



                          
                        
                        <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="highest_qualification">Highest Qualification :</label>
                                <div class="form-select" style="width: 200px;">
                                <input type="text"   value="<%=rs.getString(14)%>" readonly>
                                   
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                                
                            </div>
                            <div class="form-group" style="padding-left: 15px;">
                                <label for="Specialiazation">Specialiazation :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input type="text" name="specialization" id="specialiazation" value="<%=rs.getString(15)%>" readonly>
                                  
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="Designation">Designation :</label>
                                <div class="form-select" style="width: 200px;">
                                    <input type="text"   value="<%=rs.getString(16)%>" readonly>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                                
                            </div>
                            <div class="form-group" id="GuestDivCheck" >
                                <label for="department">Department :</label>
                                <div class="form-select" style="width: 200px ">
                                   <input type="text"   value="<%=rs.getString(17)%>" readonly>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                                
                            </div> 

                        </div>
                        <div class="form-row">
                            <div class="form-group"  style="width: 300px;">
                                <label for="adhar_num">Adhar No :</label>
                                <input type="text" name="adhar_num" id="adhar_num" value="<%=rs.getString(18)%>" style="width: 200px;
"  readonly />
                            </div>  
                            <div class="form-group" >
                                <label for="txtPANCard">Pan No :</label>
                                <input type="text" name="txtPANCard" id="txtPANCard" value="<%=rs.getString(20)%>" readonly/>
                                <span id="lblPANCard" style="color: Red;
                                visibility: hidden;">Invalid PAN Number</span>
                            </div>  
                        </div> 
                        
                        <div class="form-row">
                            <div class="form-group"  style="width: 300px;">
                                <label for="username">Username :</label>
                                <input type="text"  name="username" id="username" value="<%=rs.getString(11)%>" readonly/>
                            </div>  
                            <div class="form-group"  >
                                <label style="margin-left: 14px;" >Password :</label>
                                 <input class="form-control" type="password" id="password" name="output" value="<%=rs.getString(11)%>_<%=rs.getString(12)%>" style="margin-left: 13px;" readonly>
	                   			<input type="text" name="thelength" size=3 value="7" style="visibility: hidden;">

	                   			
                           </div>
                        <!-- <button  type="button" style="margin-top: 26px;height: 41px;width: 37px; background-color: rgb(255, 104, 1); border:none; color:white;"  onClick="populateform(this.form.thelength.value)"><i class="fa fa-refresh" style="font-size:23px;"></i> --> 
                          
                       
                        
    
                        </div> 

                        <div class="form-submit">
                           												
                            <input type="button"  class="submit" value="Back"  id="submit" onClick="javascript:window.location='RejectedEmployeeTable.jsp?';" />
                           <!--  <input type="submit" value="Approve"  class="submit" name="submit" id="submit" /> -->
                        </div>
<% }

}
catch (Exception e)
{
	out.println("Unable to connect to database.");
System.out.println(e);
}
%>

 <SCRIPT type="text/javascript">
 
 <%-- var key=(<%rs.getString(12);%>);     
	 
	 var dateParts[] = key.split("-");
		var month  = dateParts[0];
		var day  = dateParts[2];
		var year = dateParts[1];  --%>
	 
  var keylist="abcdefghijklmnopqrstuvwxyz123456789"
 	var temp='' 
 	 
 	function generatepass(plength){
 		
 	 temp=''
 	for (i=0;i<plength;i++)
 	temp+=keylist.charAt(Math.floor(Math.random()*keylist.length)) 
  return temp 
 	//return	day
 	}
 	 
 	function populateform(enterlength){
 	document.pgenerate.output.value=generatepass(enterlength)
 	}
 
            
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