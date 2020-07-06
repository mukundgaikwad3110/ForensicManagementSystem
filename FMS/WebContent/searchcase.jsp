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
  <title>Form Component | Creative - Bootstrap 3 Responsive Admin Template</title>
  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <link href="css/daterangepicker.css" rel="stylesheet" />
  <link href="css/bootstrap-datepicker.css" rel="stylesheet" />
  <link href="css/bootstrap-colorpicker.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />

<title>Insert title here</title>
</head>

<body> <section class="wrapper" class="">
        <div class="row"><center>
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading">
               <h1><center>Search Case Files</center></h1>
              </header>		<br><br>
              <form action="searchcase1.jsp">		
                                     <table class="table table-bordered">
                <tbody>
                       
                       <tr>
                      <th><center>Select Case Type</center></th>
                      <th><center>Search By</center></th>
                      <th><center>Enter Here</center></th>
                 </tr>
<tr>
<td><select class="form-control" name="typeofcase" onchange="changecase()">
                        <option value="FIR">FIR</option>
                        
                         <option value="NCR">NCR</option>
                      </select>  
               </td>
<td>     <select class="form-control" name="fieldtype">
                    	 <option value="ByNo">ByNo</option>
                         <option value="ByAct">ByAct</option>
                         <option value="BySection">BySection</option>
                         <option value="ByPoliceStation">ByPoliceStation</option>
                         <option value="ByComplaint">ByComplaint</option>
                         <option value="ByComplainantName">ByComplainantName</option>
                        
                      </select></td>
<td>   <input class="form-control " id="pstation" type="text" name="value" required  /></td>
</tr>

           </div>
           </center>
           </div>
          </tbody>
          </table>
<div class="form-group"> 
                      <center><div>
              <button type="submit" class="register">Search</button>
               <button type="reset" class="cancel">Cancel</button>
          
          
          
          
          
          
          
          
          
          
          
</form>
</section></div></div></section>
</body>
</html>