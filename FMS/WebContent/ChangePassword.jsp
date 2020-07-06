<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Change password</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <style type="text/css">
 ::selection
        {
            color: #ffebef;
            background-color: #f51444;
        }
 </style>
</head>

<body>
<script language="javascript">
function fncSubmit()
{

if(document.ChangePasswordForm.OldPassword.value == "")
{
alert('Please input old password');
document.ChangePasswordForm.OldPassword.focus();
return false;
} 

if(document.ChangePasswordForm.newpassword.value == "")
{
alert('Please input Password');
document.ChangePasswordForm.newpassword.focus(); 
return false;
} 

if(document.ChangePasswordForm.conpassword.value == "")
{
alert('Please input Confirm Password');
document.ChangePasswordForm.conpassword.focus(); 
return false;
} 

if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
{
alert('Confirm Password Not Match');
document.ChangePasswordForm.conpassword.focus(); 
return false;
} 

document.ChangePasswordForm.submit();
}
</script>
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
	$(".toggle-password").click(function() {

		  $(this).toggleClass("fa-eye fa-eye-slash");
		  var input = $($(this).attr("toggle"));
		  if (input.attr("type") == "password") {
		    input.attr("type", "text");
		  } else {
		    input.attr("type", "password");
		  }
		});
	</script>
	<script>
	function myFunction() {
		  var x = document.getElementById("myInput");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
	</script>
	<script>
	function myFunction1() {
		  var x = document.getElementById("myInput1");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
	</script>
	<script>
	function myFunction2() {
		  var x = document.getElementById("myInput2");
		  if (x.type === "password") {
		    x.type = "text";
		  } else {
		    x.type = "password";
		  }
		}
	</script>
	
<!--===============================================================================================-->

</head>
<body>

<div class="limiter">
		<div class="container-login100" style="background-image: url('img/police.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Change Password
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" name="form" method="post" action="ForgotPasswordProcess.jsp" onsubmit="javascript:return validate();">







					
					<div class="wrap-input100 validate-input" data-validate = "Enter OLD PASSWORD">
					
						<input class="input100" type="password" id="myInput" name="OldPassword" size="20" placeholder="Old Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
						<!-- <button onclick="myFunction()"><span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span></button> --> 
					<input type="checkbox" id="show" onclick="myFunction()" style="margin-left: 316px;margin-top: -27px;">show
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter New Password">
						<input class="input100" type="password" id="myInput1" name="newpassword"  placeholder="New Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
						<input type="checkbox" id="show" onclick="myFunction1()" style="margin-left: 316px;margin-top: -27px;">show
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Enter Confirm Password">
						<input class="input100" type="password" id="myInput2" name="conpassword" placeholder=" Confirm Password">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
						<input type="checkbox" id="show" onclick="myFunction2()" style="margin-left: 316px;margin-top: -27px;">show
					</div>

					<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn" id="login-form">Save</button>&nbsp;
					
					</div>
					

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>