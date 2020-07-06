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
    <title>Show NCR</title>

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> 
<script>
           $ (document).ready(function(){
                 $("#users").change(function(){
                     var value = $(this).val();
                     $.get("GetGuestId.jsp",{q:value},function(data){
                      $("#javaquery").html(data);
                     });
                 });
             });
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
 String ncr_id=request.getParameter("ncr_id");
 String username=request.getParameter("username");

try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);
String query="select * from ncr where ncr_id=" +ncr_id; 

st=conn.createStatement();
rs=st.executeQuery(query);

if(rs.next()){

	%>

<center><h2 style="color: white;">Non-Cogninzible Report Form </h2></center>

    <div class="main">

        <div class="container">
            <div class="signup-content">
               <!--  <div class="signup-img" style="width: 500px;">
                    <img src="images/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div> -->
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form"  style="   padding-left: 100px;" action="Guest_NCR1.jsp">
                        <!-- style="width:1117px;" -->
                        
                        
                    <div class="form-row">

                        <div class="form-group" style="width: 300px;">
                            <label for="date">Date :</label>
                            <input type="date" name="date" id="date" style="width: 200px;" value="<%=rs.getString(3)%>">
                        </div>

                        <div class="form-group" style="margin-left: 180px;width: 300px;">
                            <label for="ncrno">NCR No. :</label>
                            <input type="text" name="ncrno" id="ncrno" style="width: 200px;"  onkeypress="isInputNumber(event)" value="<%=rs.getString(4)%>"/>
                        </div>

                        <div class="form-group" style="margin-left: 180px;"">
                            <label for="policestation">Police Station:</label>
                            <input type="text" name="policestation" id="policestation" style="width: 216px;"required value="<%=rs.getString(5)%>"/><br>
                        </div>

                    </div>
                          <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="acts">Acts:</label>
                                <input type="text" name="acts" id="acts" style="width: 216px;"required value="<%=rs.getString(6)%>"/><br>

                            </div><br>
                            <div class="form-group" style="width: 300px;margin-left: 160px; ">
                                <label for="section">Section :</label>
                                <input type="text" name="section" id="section" style="width: 216px;" required value="<%=rs.getString(7)%>"/><br>
                            </div>
                        </div>
                        <label >information Recieved At P.S. :</label><br>
                      
                      <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="date1">Date:</label>
                                <input type="date" name="date1" id="date1" style="width: 216px;"required value="<%=rs.getString(8)%>"/><br>

                            </div><br>
                            <div class="form-group" style="width: 300px; margin-left: 160px;">
                                <label for="time">Time :</label>
                                <input type="Time" name="time" id="time" style="width: 216px;" required value="<%=rs.getString(9)%>"/><br>

                            </div>
                        </div>


                      
                      <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label >Name & Residence of Complainant :</label>
                                <input type="text" name="nameofcomplainant" id="nameofcomplainant" style="height: 104px;width: 216px;margin-left: 290px;margin-top: -19px;width: 219px;"required value="<%=rs.getString(10)%>"/><br>

                            </div><br>
                            <div class="form-group" style="width: 300px; margin-left: 250px;">
                                <label for="nameofwitness" style="margin-left: -48px;">Name & Full Address of Witness :</label>
                                <input type="text" name="nameofwitness" id="nameofwitness" style="width: 216px;margin-left: 211px;height: 116px;margin-top: -20px;" required value="<%=rs.getString(11)%>"/><br>
                                
                            </div>
                        </div>
                
                <div class="form-row">
                    <div class="form-group">
                         <label for="complaint">Complaint in Brief :</label>
                         <input type="text" name="complaint" id="complaint"style="height: 155px;width: 450px;margin-left: 160px;margin-top: -19px;" required value="<%=rs.getString(12)%>"/><br>
                    
                    </div>

                </div>
                <div id="javaquery" ></div> 
                
                <!-- <label for="complaint" style="margin-bottom:20px;">Add Guest:</label> -->





                        <!-- <div class="form-submit" style="margin-bottom: 46px;">
                            <input type="submit" value="Cancel" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Add Guest" class="submit" name="submit" id="submit" style="margin-right: -53px;"/>
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

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>