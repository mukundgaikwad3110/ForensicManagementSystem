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
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Employee Registration Form</title>

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

  
<script src="E:/TEchProj/NiceAdmin/js/showDesignation"></script></head>
<body>
<% 
String Database="jdbc:mysql://localhost:3308/forensic";
String UserName="root";
String Password="";
Connection conn=null;
ResultSet rs = null;
Statement st = null;
 PreparedStatement pstmt = null;
 String reg_id=request.getParameter("reg_id");
 String name=request.getParameter("name");
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);
String query="select * from emp_reg where reg_id="+reg_id;
st=conn.createStatement();
rs=st.executeQuery(query);
if(rs.next()){
	%>
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
	                  <form class="form-validate form-horizontal"  method="post" action="#">
	               <div class="form-group" >
	                   <div class="col-md-12 ">
	                    <label for="cname" class="control-label col-lg-2">Full Name <span class="required">*</span></label>
	                      <div class="col-lg-4 ">
	                        <input class="form-control" id="name" name="fullname"  type="text" value="<%=rs.getString(2)%>" readonly />
	                      </div>
	                  <div class="col-lg-4">
	                          <div>
	                           <img src="<%=rs.getString(3)%>" id="blah" width="100" height="100"  readonly >
	                          </div>     
	                       </div>
	                </div>
	              </div>
						 <div class="form-group ">
	                      <label for="caddress" class="control-label col-lg-2">Permanat Address<span class="required">*</span></label>
	                      <div class="col-lg-4">
	                          <textarea rows="2" cols="80" type="text" class="form-control" name="address" readonly><%=rs.getString(4)%>
	                          </textarea>
	                      </div>
	                </div>

	              	                <div class="form-group ">        
	                    <label for="mobile number" class="control-label col-lg-2">Gender<span class="required">*</span></label>
	                  <div class="col-lg-2">
	                    <input class="form-control" type="text" name="mobile_num" value="<%=rs.getString(5)%>" readonly/> 
	                  </div>

	                  <label for="cemail" class="control-label col-lg-2">Marital Status<span class="required">*</span></label>
	                    <div class="col-lg-2">
	                        <input class="form-control " id="cemail" type="text" name="email"value="<%=rs.getString(6)%>" readonly/>
	                    </div>
	              </div>
  

	                <div class="form-group ">        
	                    <label for="mobile number" class="control-label col-lg-2">Mobile Number<span class="required">*</span></label>
	                  <div class="col-lg-2">
	                    <input class="form-control" type="mobile" name="mobile_num" value="<%=rs.getString(7)%>" readonly/> 
	                  </div>

	                  <label for="cemail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
	                    <div class="col-lg-4">
	                        <input class="form-control " id="cemail" type="email" name="email" value="<%=rs.getString(8)%>" readonly />
	                    </div>
	              </div>

	              <div class="form-group ">  
	                  <label for= "cbirth" class="control-label col-lg-2"> DOB:<span class="required">*</span> </label>
	                 <div class="col-lg-2">  
	                   <input class="form-control" type="date" name="date" value="<%=rs.getString(9)%>" readonly>
	                </div>

	                 <label for= "age" class="control-label col-lg-2"> Age:<span class="required">*</span> </label>
	                 <div class="col-lg-2">  
	                   <input class="form-control" type="text" name="age" value="<%=rs.getString(10)%>" readonly>
	                </div>

	            </div>

	            <div class="form-group ">
	                  <label for="cqualification" class="control-label col-lg-2">Highest Qualification:<span class="required">*</span></label>
	                 <div class="col-lg-2">  
	                   <input class="form-control" type="text" name="age" value="<%=rs.getString(11)%>" readonly>
	                </div>
	             

	                  <label for= "specialization" class="control-label col-lg-2"> Specialization:<span class="required">*</span> </label>
	                 <div class="col-lg-2">  
	                   <input class="form-control" type="text" name="specialization" value="<%=rs.getString(12)%>" readonly>
	                </div>
	            </div>

	            <div class="form-group ">
	                  <label for="designation" class="control-label col-lg-2">Designation:<span class="required">*</span> </label>
	                 <div class="col-lg-2">  
	                   <input class="form-control" type="text" name="specialization" value="<%=rs.getString(13)%>" readonly>
	                </div>
	          
	                <div class="form-group ">  
	                  <label for="designation" class="control-label col-lg-2">Department:<span class="required">*</span> </label>
	               <div class="col-lg-2">  
	                   <input class="form-control" type="text" name="specialization" value="<%=rs.getString(14)%>" readonly>
	                </div>
	            </div>
	            

	          </div>

	            <div class="form-group ">  
	                  <label for="Adhar_Number" class="control-label col-lg-2">Adhar Number:<span class="required">*</span> </label>
	                <div class="col-lg-2">  
	                    <input class="form-control" id="adhar" name="adhar_num" value="<%=rs.getString(15)%>" readonly /><br><br>
	                </div>
	               <div class="form-group ">  
	                  <label for="designation" class="control-label col-lg-2">Pan Card:<span class="required">*</span> </label>
	               <div class="col-lg-2">  
	                   <input class="form-control" type="text" name="specialization" value="<%=rs.getString(16)%>" readonly>
	                </div>
	            </div>
	         </div>
	          <div class="form-group ">  
	                  <label for="Adhar_Number" class="control-label col-lg-2">UserName:<span class="required">*</span> </label>
	                <div class="col-lg-3">  
	                    <input class="form-control" id="adhar" name="adhar_num" value="<%=rs.getString(8)%>" readonly /><br><br>
	                </div>
	               <div class="form-group ">  
	                  <label for="designation" class="control-label col-lg-2" style="margin-left:-93px;">Password:<span class="required">*</span> </label>
	               <div class="col-lg-2">  
	                   <input class="form-control" type="text" name="specialization" value="">
	                </div>
	            </div>
	         </div>
	                
	            </div>
	    <center><div>
	              <button type="submit" value="submit" name="submit" btn btn-primary >Register</button>
	              <!-- <button type="reset" class="cancel">Cancel</button> --> 

<% }

}
catch (Exception e)
{
	out.println("Unable to connect to database.");
System.out.println(e);
}
%>

            </div></center>
                  </form>
                </div>

              </div>
            </section>
          </div>
        </div>
        
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
</SCRIPT>


                    
                 
        <!-- page end--><!-- 
      </section>
    </section> -->

    <!--main content end-->
    
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

