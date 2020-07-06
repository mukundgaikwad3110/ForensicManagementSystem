<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	
 <script>
function getConfirmation() {
    var retVal = confirm("Are You Sure To Log Out?");
    if( retVal == true ) {
 	   window.location = 'Login2.jsp';
       return true;
    } else {
 	   window.location = 'OfficerPannel.jsp';
       return false;
    }
 }
</script>


</style>
</head>
<body>
<% String emp_id=(String)session.getAttribute("id");%>

<center>
<h2>Log Out</h2><br>

<div class="card" style="width:230px;">

  <!-- <img src="img/img_avatar.jpg" alt="Avatar" style="width:100%"> -->
  <img src="getIconImage.jsp?id=<%=emp_id%>" style="width:100%;">
  <!-- <div class="container">
   <button class="button" style="vertical-align:middle"><span>Logout </span></button>
    <br><button class="login100-form-btn" id="login-form">Logout</button>&nbsp;
   <button class="button" style="vertical-align:middle"><span>Cancel </span></button> -->
    <!-- <input type="button"  class="login100-form-btn" value="Cancel" onClick="javascript:window.location='Registration2.jsp';"> -->
    
    <button onclick = "getConfirmation();" class="btn btn-info btn-lg" style="width:97px;margin-top: 12px;margin-left: -3px;margin-bottom: 12px;"><a >
          <span class="glyphicon glyphicon-log-out"></span> Log out
        
        </a></button>
        <button onclick = "getConfirmation();" class="btn btn-info btn-lg" style="width:97px;margin-top: 12px;margin-left: -3px;margin-bottom: 12px;"><a >
          <span class="glyphicon glyphicon-log-out"></span> Cancel
        
        </a></button>
        
         
  </div>

</center>

<%




%>
</body>
</html>