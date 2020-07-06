<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
    <title>Suspect Registration Form</title>

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

	%>    <center><h2 style="color: white;">Suspect Registration Form</h2></center>

    <div class="main">

        <div class="container" style="width: 1148px;">
            <div class="signup-content"  >
                <input type="hidden" name="emp_id" id="emp_id" style="width: 200px;" value="<%=rs.getString(1)%>">
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form" style="padding-left: 100px;" action="AddInfoFIRProcess.jsp?firno=<%=rs.getString(9)%>,firid=<%=rs.getString(1)%>" enctype="multipart/form-data">
                        <!-- style="width:1117px;" -->
                        <div class="form-row">
 					<input type="hidden" name="emp_id" id="emp_id" style="width: 200px;" value="<%=rs.getString(1)%>">
                        <div class="form-group" style="width: 300px;">
                            <label for="firid">FIR ID :</label>
                            
                            <input type="text" name="firid" id="firid" style="width: 200px;" value="<%=rs.getString(2)%>">
                        </div>

                        <div class="form-group" style="width: 300px;">
                            <label for="date">FIR No :</label>
                            <input type="text" name="firno" id="firno" style="width: 200px;"  value="<%=rs.getString(9)%>" onkeypress="isInputNumber(event)" "/>
                        </div>

					</div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="info">Add Information :</label>
                              <input type="text" name="info" id="info" style="width: 800px; height:300px;"required/><br> 
								

                            </div>
                           </div>
                        
                        

                        
                     <div class="form-row">
                     
                        
                    </div>


                        
                        <div class="form-submit">
                            <input type="reset" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Register" class="submit" name="submit" id="submit"  />
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