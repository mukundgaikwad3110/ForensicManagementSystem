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
    <title>Add Evidence NCR</title>

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
<% 
String name=(String)session.getAttribute("sessname"); 
 String emp_id=(String)session.getAttribute("id"); 

 //out.print("Hello User: Your name and id is: '"+name+"','"+emp_id+"';");
%> 
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
String query="select * from fir where id=" +id; 

st=conn.createStatement();
rs=st.executeQuery(query);

if(rs.next()){

	%>

<center><h2 style="color: white;">Add Evidence Form </h2></center>

    <div class="main">

        <div class="container">
            <div class="signup-content">
               <!--  <div class="signup-img" style="width: 500px;">
                    <img src="images/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div> -->
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form" style="padding-left: 100px;" action="EvidenceFIR" enctype="multipart/form-data">
                        <!-- style="width:1117px;" -->
                        
                        
                   

                      <div class="form-row">
 					<input type="hidden" name="emp_id" id="emp_id" style="width: 200px;" value="<%=rs.getString(1)%>">
                        <div class="form-group" style="width: 300px;">
                            <label for="firid">FIR ID :</label>
                            
                            <input type="text" name="id" id="id" style="width: 200px;" value="<%=rs.getString(2)%>">
                        </div>
                        <div class="form-group" style="width: 300px;">
                            <label for="firno">FIR No :</label>
                            
                            <input type="text" name="firno" id="firno" style="width: 200px;" value="<%=rs.getString(9)%>">
                        </div>

                        <div class="form-group" style="width: 300px;">
                            <label for="date">Date :</label>
                            <input type="date" name="date" id="date" style="width: 200px;"  onkeypress="isInputNumber(event)" value="<%=rs.getString(13)%>"/>
                        </div>

					</div>
					 <div class="form-row">

                       

                        <div class="form-group" style="width: 300px;">
                            <label for="evidenceType">Evidence Type:</label>
                         <div class="form-select" style="width: 200px;">
                                    <select name="evidenceType" id=evidenceType >
                                        <option value="Select Type"> Select Type</option>
                                        <option value="fingerprint">fingerprint</option>
                                        <option value="blood samples">blood samples</option>
                                        <option value="DNA">DNA</option>
                                        <option value="knife">knife</option>
                                        <option value="gun">gun</option>
                                         <option value="other physical objects">other physical objects</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                        </div>
                        <div class="form-group" style="width: 300px;">
                        
                            <label for="evidencedescription">Evidence Type Description:</label>
                            <input type="text" name="etd" id="etd" style="width: 224px; height:137px;"   value=""/>
                        </div>
					</div>
					<div class="form-row">
						<div class="form-group" style="width: 300px;">
                   			<label for="Imgae">Evidence Image:</label>
                   			<div >
                           <img src="nophoto.png" id="blah" width="100" height="100">
                          </div> 
                         <input type="file"  id="fileChooser" name="evidence_image" onchange="ValidateFileUpload()" style="width: 222px;padding-left: 5px;"> 
                       </div> 
                  <div class="form-group" style="width: 300px;">
                   			<label for="Audio">Evidence Audio:</label>
                   			
                         <input type="file"  id="fileChooser" name="evidence_audio" onchange="ValidateFileUpload()" style="width: 222px;padding-left: 5px;"> 
                       </div> 
                       <div class="form-group" style="width: 300px;">
                   			<label for="Video">Evidence Video:</label>
                         <input type="file"  id="fileChooser" name="evidence_video" onchange="ValidateFileUpload()" style="width: 222px;padding-left: 5px;"> 
                       </div> 
                   </div> 
                   <div class="form-group" style="width: 300px;">
                        
                            <label for="info">Information:</label>
                            <input type="text" name="info" id="info" style="width: 500px; height:200px;"   value=""/>
                        </div> 
                       
         <div class="form-submit" style="margin-bottom: 46px;">
                            <input type="submit" value="Cancel" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Add Evidence" class="submit" name="submit" id="submit" style="margin-right: -53px;"/>
                        </div>
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
                    || Extension == "jpeg" || Extension == "jpg" ) {

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
 </script>
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>