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
    <title>View Evidence NCR</title>

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
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";
Connection conn=null;
ResultSet rs = null;
Statement st = null;
 PreparedStatement pstmt = null;
 String id=request.getParameter("id");
 String username=request.getParameter("username");
out.println(id);
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);
String query="select * from evidencencr where id=" +id; 

st=conn.createStatement();
rs=st.executeQuery(query);

if(rs.next()){

	%>

<center><h2 style="color: white;">View Evidence Form </h2></center>

    <div class="main">

        <div class="container">
            <div class="signup-content">
               <!--  <div class="signup-img" style="width: 500px;">
                    <img src="images/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div> -->
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form" style="padding-left: 100px;" action="#" enctype="multipart/form-data">
                        <!-- style="width:1117px;" -->
                        
                        
                   

                      <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                            <label for="ncrid">NCR ID :</label>
                            <input type="text" name="ncrid" id="ncrid" style="width: 200px;" value="<%=rs.getString(2)%>">
                        </div>

                        <div class="form-group" style="width: 300px;">
                            <label for="date">Date :</label>
                            <input type="date" name="date" id="date" style="width: 200px;"  onkeypress="isInputNumber(event)" value="<%=rs.getString(3)%>"/>
                        </div>

					</div>
					 <div class="form-row">

                       

                        <div class="form-group" style="width: 300px;">
                            <label for="evidenceType">Evidence Type:</label>
                         <div class="form-select" style="width: 200px;">
                                      
                           <input type="text" name="evidenceType" id="evidenceType"  value="<%=rs.getString(4)%>"/>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                        </div>
                        <div class="form-group" style="width: 300px;">
                        
                            <label for="evidencedescription">Evidence Type Description:</label>
                            <input type="text" name="etd" id="etd" style="width: 224px; height:137px;"  value="<%=rs.getString(5)%>"/>
                        </div>
					</div>
					<div class="form-row">
						<div class="form-group" style="width: 300px;">
                   			<label for="Imgae">Evidence Image:</label>
                   			<div >
                           <!-- <img src="nophoto.png" id="blah" width="100" height="100"> -->
                           <img src="GetImageEvidenceNCR.jsp?id=<%=id%>" width="100px" height="100px">
                          </div> 
                         <input type="file"  id="fileChooser" name="evidence_image" onchange="ValidateFileUpload()" style="width: 222px;padding-left: 5px;"> 
                       </div> 
                  <div class="form-group" style="width: 300px;">
                   			<label for="Audio">Evidence Audio:</label>
                   		
                   			
                         <input type="file"  id="fileChooser" name="evidence_audio" onchange="ValidateFileUpload()" style="width: 222px;padding-left: 5px;"> 
                       </div> 
                       <div class="form-group" style="width: 300px;">
                   			<label for="Video">Evidence Video:</label>
                   			<video width="320" height="240" controls>
  <source src="<%=rs.getString(4)%>" type="video/mp4">
  <source src="movie.ogg" type="video/ogg">
  Your browser does not support the video tag.
</video>
                         <input type="file"  id="fileChooser" name="evidence_video" onchange="ValidateFileUpload()" style="width: 222px;padding-left: 5px;"> 
                       </div> 
                   </div>
                    <div class="form-group" style="width: 300px;">
                        
                            <label for="info">Information:</label>
                            <input type="text" name="info" id="info" style="width: 500px; height:200px;"  value="<%=rs.getString(9)%>"/>
                        </div>  
                       
         <!-- <div class="form-submit" style="margin-bottom: 46px;">
                            <input type="reset" value="Cancel" class="submit" name="reset" id="reset" onclick="window.location='EvidenceNCRTable.jsp'" />
                            <input type="submit" value="Add Evidence" class="submit" name="submit" id="submit" style="margin-right: -53px;"/>
                        </div> -->
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