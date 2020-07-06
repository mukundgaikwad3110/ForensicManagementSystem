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
<body>

 <section class="wrapper" class="">
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <header class="panel-heading"><br>
              
               <h1><center>Blood Reports</center></h1>
              </header>		
              
             <form method="post" action="BloodTestForm1.jsp">
                 <input type="hidden" name="ncrno" value=<%=request.getParameter("ncrno")%>>
                 <div class="form-group">
                      <label for="caddress" class="col-lg-2"  style="color:black; display:block;text-align:center;">Date of sample collection:</label>
                      <div class="col-lg-2">
                           <input class="form-control"  name="coldate"  type="date" required style="margin-right:auto;" />
                      </div>
                     <label for="caddress" class="col-lg-2"  style="color:black; display:block; text-align:center;" >Laboratory Name:</label>
                      <div class="col-lg-2">
                           <input class="form-control" id="labname" name="labname"  type="text" required  />
                      </div>
                     <label for="caddress" class="col-lg-2"  style="color:black; display:block;text-align:center;">Dr. Name:</label>
                      <div class="col-lg-2">
                           <input class="form-control" id="drname" name="drname"  type="text" required  />
                      </div>
                      <label for="caddress" class="col-lg-2"  style="color:black; display:block;text-align:center; margin-top:20px;">Patient Name:</label>
                      <div class="col-lg-2">
                           <br><input class="form-control" id="patientname" name="patientname"  type="text" required  />
                      </div>
                      <label for="caddress" class="col-lg-2"  style="color:black; display:block;text-align:center; margin-top:20px;">Gender:</label>
                      <div class="col-lg-2">
                           <br><input class="form-control" id="gender" name="gender"  type="text" required  />
                      </div>
                       
                  </div>
                         <hr>
                      </div>
                </div>
                 <hr style="height:1px; background-color:gray;">
                 <div class ="form-group" >
              <center> 
                              <table class="table table-bordered" style="margin-left:auto; margin-right:auto; width:50%; margin-top:10px;">
                                         <center> <caption style="color:black;"><h3>Blood Contents</h3></caption>
   							<col width="20">
                		<col width="100">
                			<col width="20">
                			 <tbody>
                       <tr>
                      <th><i class="fas fa-id-card">&nbsp</i>No.</th>
                      <th>Title</th>
                      <th ><i class="icon_pencil-edit" width="20px" >&nbsp</i>Readings</th>
                    <tr>
                      <td>1</td>
                      <td>Blood Group:</td>
                      <td><center>
                     <input class="form-control"  name="bg"  type="text" width="20" required  />
                  </td>
                  </tr>  
                    <tr>
                      <td>2</td>
                      <td>White Blood Cell:</td>
                      <td><center>
                     <input class="form-control"  name="wbc"  type="text" width="20" required  />
                  </td>
                  </tr>  
                    <tr>
                      <td>3</td>
                      <td>Red  Blood Cell:</td>
                      <td><center>
                     <input class="form-control"  name="rbc"  type="text" width="20" required  />
                  </td>
                  </tr>  
                    <tr>
                      <td>4</td>
                      <td>Hemoglobin(Hb/Hgb):</td>
                      <td><center>
                     <input class="form-control"  name="hb"  type="text" width="20" required  />
                  </td>
                  </tr>  
                    <tr>
                      <td>5</td>
                      <td>Glucose:</td>
                      <td><center>
                     <input class="form-control"  name="glucose"  type="text" width="20" required  />
                  </td>
                  </tr>  
                    <tr>
                      <td>6</td>
                      <td>Platelate count:</td>
                      <td><center>
                     <input class="form-control"  name="pc"  type="text" width="20" required  />
                  </td>
                  </tr>  
                    <tr>
                      <td>7</td>
                      <td>BUN:</td>
                      <td><center>
                     <input class="form-control"  name="bun"  type="text" width="20" required  />
                  </td>
                  </tr>  
                     <tr>
                      <td>8</td>
                      <td>Creatine:</td>
                      <td><center>
                     <input class="form-control"  name="creatine"  type="text" width="20" required  />
                  </td>
                  </tr>  
                     <tr>
                      <td>9</td>
                      <td>Sodium:</td>
                      <td><center>
                     <input class="form-control"  name="sodium"  type="text" width="20" required  />
                  </td>
                  </tr>  
                     <tr>
                      <td>10</td>
                      <td>Carbon Dioxide:</td>
                      <td><center>
                     <input class="form-control"  name="cd"  type="text" width="20" required  />
                  </td>
                  </tr>  
                     
                </tbody>
              	</table>
              	</center>
  <hr style="height:1px; background-color:gray;">
               <label for="caddress" class="col-lg-12"  style="color:black; display:block;text-align:left;"><b>Any other content found in blood:</b></label><br>
             
                     	<div class="form-group">
                     	           <label for="caddress" class="col-lg-3"  style="color:black; display:block;text-align:right;"><b>Alcohol:</b></label>
    
                                           <label for="caddress" class="col-lg-2"  style="color:black; display:block; text-align:center;" >Percentage:</label>
                      <div class="col-lg-2">
                           <input class="form-control"  name="alcpercentage"  type="text" required  />
                      </div>
                     <label for="caddress" class="col-lg-2"  style="color:black; display:block;text-align:center;">Type:</label>
                      <div class="col-lg-2">
                           <input class="form-control"  name="alctype"  type="text" required  />
                      </div></div><br><br>
    <div class="form-group">
                     	           <label for="caddress" class="col-lg-3"  style="color:black; display:block;text-align:right;"><b>Drug:</b></label>
    
                                           <label for="caddress" class="col-lg-2"  style="color:black; display:block; text-align:center;" >Percentage:</label>
                      <div class="col-lg-2">
                           <input class="form-control"  name="drugpercentage"  type="text" required  />
                      </div>
                     <label for="caddress" class="col-lg-2"  style="color:black; display:block;text-align:center;">Type:</label>
                      <div class="col-lg-2">
                           <input class="form-control"  name="drugtype"  type="text" required  />
                      </div></div>
    <div class="form-group"><br><br>
                     	           <label for="caddress" class="col-lg-3"  style="color:black; display:block;text-align:right;"><b>Any type of poison:</b></label>
    
                                           <label for="caddress" class="col-lg-2"  style="color:black; display:block; text-align:center;" >Percentage:</label>
                      <div class="col-lg-2">
                           <input class="form-control"  name="poisonpercentage"  type="text" required  />
                      </div>
                     <label for="caddress" class="col-lg-2"  style="color:black; display:block;text-align:center;">Type:</label>
                      <div class="col-lg-2">
                           <input class="form-control"  name="poisontype"  type="text" required  />
                      </div></div><br><br>
                 
                 <center><div><hr style="height:1px; background-color:gray;">
                 
              
              <button type="submit" value="Register" name="submit"  class="btn btn-success" style="width:200px; height: 60px;">Submit</button>
               <button type="reset"  class="btn btn-danger" style="width:200px; height: 60px;">Cancel</button> 
               
    </div></center>
                 
                 
                 
                 
                 
                 
                 
                 
              	</div>
              	
      		    
               </section>
               </form>	
</body>
</html>