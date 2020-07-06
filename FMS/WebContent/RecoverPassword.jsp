<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Login Page</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/recoverpassword.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

</head>
  <body class="login-img3-body">

    <div class="container">
    	<center> 
        <button class="btn btn-link" onclick="openForm()" ><h1 id="myfont">Forensic Management System</h1></button><br>
        <button class="btn btn-link" onclick="openForm1()"><h1 id="myfont">view as employee</h1></button>

    </center>
    	
        <center>
          <form class="login-form" method="get" action="admin">
 <span class="close" onclick="">&times;</span>
            <div class="login-wrap">
              <p class="login-img"><i class="icon_lock_alt"></i></p>
                <div class="input-group">
                 <span class="input-group-addon"><i class="icon_profile"></i></span>
                 <input type="text" class="form-control" name="uname" placeholder="Username" autofocus required>
                </div>
                <div class="input-group">
                   <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                   <input type="text" class="form-control" name="mobno" placeholder="Mobile No." required>
                </div>
              <!-- <label class="checkbox">
                <input type="checkbox" value="remember-me">Remember me
              </label>
 -->
              <br><br><button class="btn btn-primary btn-lg btn-block" type="submit">Recover</button><br>
              
            </div>
           </form>
        </center>
      


    </div>
  <script>
  function openForm() {
    
    document.getElementById("myForm").style.display = "block";
  }

  function closeForm() {
    document.getElementById("myForm").style.display = "none";
  }
  function openForm1() {
    document.getElementById("myForm").style.display = "none";
    document.getElementById("myForm1").style.display = "block";
  }

  function closeForm1() {
    document.getElementById("myForm1").style.display = "none";
  }

  </script>


  </body></html>