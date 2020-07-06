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
    <title>Post Mortam Form</title>

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
<%
String ncrno=request.getParameter("ncrno");
%>
<body>
<% 
String Database="jdbc:mysql://localhost:3306/forensic";
String UserName="root";
String Password="";
Connection conn=null;
ResultSet rs = null;
Statement st = null;
 PreparedStatement pstmt = null;
 
 

try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(Database,UserName,Password);
String query="select * from postmortem where ncrno=" +ncrno; 

st=conn.createStatement();
rs=st.executeQuery(query);

if(rs.next()){

	%>
<center><h2 style="color: white;"> View Post Mortam Form</h2></center>
<input type="hidden" name="ncrno" value=<%=request.getParameter("ncrno")%>>
    <div class="main">

        <div class="container" style="width:1200px;">
            <div class="signup-content">
               <!--  <div class="signup-img" style="width: 500px;">
                    <img src="images/police3.jpg" alt="" style="width: 500px; height: 1210px;">
                </div> -->
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form"  style="   padding-left: 100px;" action="PostMortem1.jsp?ncrno=<%=request.getParameter("ncrno")%>">
                        <!-- style="width:1117px;" -->
                        
                        
                    <div class="form-row">
						
						<div class="form-group" style="width: 300px;">
                            <label for="pmrptno">Post Mortam Report  No. :</label>
                            <input type="text" name="pmrptno" id="pmrptno" style="width: 200px;"  onkeypress="isInputNumber(event)" required value="<%=rs.getString(3)%>"readonly/> 
                        </div>
                        <div class="form-group" style=" margin-left: 180px;width: 300px;">
                            <label for="date">Date :</label>
                            <input type="date" name="date" id="date" style="width: 200px;" required value="<%=rs.getString(4)%>"readonly/>
                        </div>

                        <div class="form-group" style=" margin-left: 180px;width: 300px;">
                            <label for="bname">Body Name :</label>
                            <input type="text" name="bname" id="bname" style="width: 250px;" required value="<%=rs.getString(5)%>"readonly/>
                        </div>
                        

                        

                    </div>
                          <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label for="acts">Conducted By Dr.:</label>
                                <input type="text" name="drname" id="drname" style="width: 216px;"required value="<%=rs.getString(6)%>"readonly/><br>

                            </div><br><br>
                            
                            <div class="form-group" style="width: 300px;margin-left: 160px; ">
                            
                                <label for="dtedb" style="width:500px;">Date and Time Of Examination of Dead Body :</label>
                                <input type="date" name="dtedb" id="dtedb" style="width: 216px;" required value="<%=rs.getString(7)%>"readonly/>
                            	<input type="Time" name="time" id="time" style="width: 216px;margin-top: -44px;margin-left: 247px;" required value="<%=rs.getString(8)%>" readonly/><br>
                            </div>
                        </div>
                        <label >Case Perticulars. :</label><br>
                      
                      <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label style="width:500px;">Name of deceased and as entered in Jail Or Police Record:</label>
                                <input type="text" name="nod" id="nod" style="width: 280px;"required value="<%=rs.getString(9)%>"readonly/><br>

                            </div><br>
                            <div class="form-group" style="width: 300px; margin-left: 160px;">
                                <label for="address">Address :</label>
                                <input type="address" name="address" id="address" style="width: 216px;" required value="<%=rs.getString(10)%>"readonly/><br>

                            </div>
                        </div>


                      
                      <div class="form-row">
                            <div class="form-group" style="width: 300px;">
                                <label >Age :</label>
                                <input type="text" name="age" id="age" style="width: 216px;"required value="<%=rs.getString(11)%>"readonly/><br>

                            </div>
                            <div class="form-group" style="width: 300px; margin-left: 160px;">
                                <label for="gender" style="">Gender:</label>
                                <input type="text" name="gender" id="gender" style="width: 216px;" required value="<%=rs.getString(12)%>"readonly/><br>
                                
                            </div>
                        </div>
                
                <div class="form-row">
                    <div class="form-group" >
                         <label for="bbb" style="width:500px;">Body Brought By (Name And Rank of Police Officials)	 :</label>
                         <input type="text" name="bbb" id="bbb"style="width: 300px;" required value="<%=rs.getString(13)%>"readonly/><br>
                    </div>
                     <div class="form-group" style="width: 300px; margin-left: 160px;">
                         <label for="bbb" style="width:500px;">Identified By (Name And Address Of relatives/persons acquainted) :</label>
                         <input type="text" name="identy" id="identy"style="width: 300px;" required value="<%=rs.getString(14)%>"readonly/><br>
                    </div>

                </div>
                
                <label for="bbb" style="width:500px;">Schedule of Observation : General :</label>
                <div class="form-row">
               
                    <div class="form-group" >
                         <label for="length" style="width:500px;">Length :</label>
                         <input type="text" name="length" id="length"style="width: 300px;" required value="<%=rs.getString(15)%>"readonly/><label style="margin-top:-30px;margin-left:210px;">cms.</label><br>
                    	
                    </div>
                     <div class="form-group" style="width: 300px; margin-left: 160px;">
                         <label for="weight" style="width:500px;">Weight:</label>
                         <input type="text" name="weight" id="weight"style="width: 300px;" required value="<%=rs.getString(16)%>"readonly/> <label style="margin-top:-30px;margin-left:210px;">kg.</label><br>
                    </div>

                </div>
                
                <div class="form-row">
                    <div class="form-group" >
                         <label for="physique" style="width:500px;">Physique(lean/medium/obese):</label>
                         <input type="text" name="physique" id="physique"style="width: 300px;" required value="<%=rs.getString(17)%>"readonly/><br>
                    </div>
                     <div class="form-group" style="width: 300px; margin-left: 160px;">
                         <label for="idfeatures" style="width:500px;">Identification Features (if Body is not identified):</label>
                         <input type="text" name="idfeatures" id="idfeatures"style="width: 300px;" required value="<%=rs.getString(18)%>"readonly/><br>
                    </div>

                </div>
                
                <div class="form-row">
                    <div class="form-group" >
                         <label for="clothes" style="width:500px;">Description of clothes worn- important features:</label>
                         <input type="text" name="clothes" id="clothes"style="width: 300px;" required value="<%=rs.getString(19)%>"readonly/><br>
                    </div>
                     <div class="form-group" style="width: 300px; margin-left: 160px;">
                         <label for="coe" style="width:500px;">External appearance:</label>
                         <input type="text" name="coe" id="coe"style="width: 300px;" placeholder="condition of eyes" required value="<%=rs.getString(20)%>"readonly/><br>
                    	<input type="text" name="no" id="no"style="width: 300px;" placeholder="Natural orifices(Mouth,Nosily,Ears)" required value="<%=rs.getString(21)%>"readonly/><br>
                    	<input type="text" name="nails" id="nails"style="width: 300px;" placeholder="Nails" required value="<%=rs.getString(22)%>"readonly/><br>
                     </div>

                </div>
                 <div class="form-row">
                    <div class="form-group" >
                         <label for="bbb" style="width:500px;">Internal Examination:</label><br>
                          <label for="bbb" style="width:500px;">Head:</label>
                         <input type="text" name="scalp" id="scalp"style="width: 300px;" placeholder="Scalp Finding" required value="<%=rs.getString(23)%>"readonly/><br>
                    	<input type="text" name="skull" id="skull"style="width: 300px;" placeholder="Skull" required value="<%=rs.getString(24)%>"readonly/><br>
                    	<input type="text" name="brain" id="brain"style="width: 300px;" placeholder="Brain Finding And Wts (wt______gms)" required value="<%=rs.getString(24)%>"readonly/><br>
                    </div>
                    
                     <div class="form-group" style="width: 300px; margin-left: 130px;"><br><br>
                         <label for="coe" style="width:500px;">Neck:</label>
                         <input type="text" name="mouth" id="mouth"style="width: 300px;" placeholder="mouth,Toungue & Pharynx" required value="<%=rs.getString(25)%>"readonly/><br>
                    	<input type="text" name="vocalcords" id="vocalcords"style="width: 300px;" placeholder="larynx & Vocal Cords" required value="<%=rs.getString(26)%>"readonly/><br>
                    	<input type="text" name="necktissues" id="necktissues"style="width: 300px;" placeholder="condition of neck tissues" required value="<%=rs.getString(27)%>"readonly/><br>
                     	<input type="text" name="thyroid" id="thyroid"style="width: 300px;" placeholder="Thyroid & other cartilage conditions" required value="<%=rs.getString(28)%>"readonly/><br>
                     </div>
                     
                     <div class="form-group" style="width: 300px; margin-left: 50px;"><br><br>
                         <label for="coe" style="width:500px;">Chest:</label>
                         <input type="text" name="ribs" id="ribs"style="width: 300px;" placeholder="Ribs & chest wall" required value="<%=rs.getString(29)%>"readonly/><br>
                    	<input type="text" name="oesophagus" id="oesophagus"style="width: 300px;" placeholder="Oesophagus" required value="<%=rs.getString(30)%>"readonly/><br>
                    	<input type="text" name="trachea" id="trachea"style="width: 300px;" placeholder="Trachea & Bronchial Tree" required value="<%=rs.getString(31)%>"readonly/><br>
                     	<input type="text" name="diaphragm" id="diaphragm"style="width: 300px;" placeholder="Diaphragm" required value="<%=rs.getString(32)%>"readonly/><br>
                     	<input type="text" name="pleural" id="pleural"style="width: 300px;" placeholder="Pleural Cavities (-R- , -L-)" required value="<%=rs.getString(33)%>"readonly/><br>
                    	<input type="text" name="lungs" id="lungs"style="width: 300px;" placeholder="Lungs findings & wts -Rt.____gms. & -Lt.____gms" required value="<%=rs.getString(34)%>"readonly/><br>
                     	<input type="text" name="heart" id="heart"style="width: 300px;" placeholder="Heart Findings & wt._____" required value="<%=rs.getString(35)%>"/><br>
                     	<input type="text" name="lbv" id="lbv"style="width: 300px;" placeholder="Large blood vessels" required value="<%=rs.getString(36)%>"readonly/><br>
                     </div>
                     
                     

                </div>
                <div class="form-row">
                    <div class="form-group" >
                         <label for="bbb" style="width:500px;">Abdomen:</label><br>
                         
                        <input type="text" name="coaw" id="coaw"style="width: 300px;" placeholder="condition of abdominal wall" required value="<%=rs.getString(37)%>"readonly/><br>
                        <input type="text" name="spleen" id="spleen"style="width: 300px;" placeholder="Spleen (Wt____gms)" required value="<%=rs.getString(38)%>"readonly/><br>
                    </div>
                    
                     <div class="form-group" style="width: 300px; margin-left: 80px;"><br><br>
                         
                        <input type="text" name="stomach" id=sStomach"style="width: 420px;" placeholder="Stomach (wall condition,content & smell) (Wt_______gms)" required value="<%=rs.getString(39)%>"readonly/><br>
  						<input type="text" name="kidneys" id="kidneys"style="width: 420px;" placeholder="Kidneys findings & wt (-Rt. ___gms And -Lt. ___gms)" required value="<%=rs.getString(40)%>"readonly/><br>                   
                     </div>
                     
                     <div class="form-group" style="width: 300px; margin-left: 140px;"><br><br>
                        
                         <input type="text" name="gall" id="gall"style="width: 300px;" placeholder="Line including Gall bladder (wt_____gms)" required value="<%=rs.getString(41)%>"readonly/><br>
                    	
                     </div>
                     
                     

                </div>
                
                 <div class="form-row">
                    <div class="form-group" >
                        
                    </div>
                    
                      <div class="form-group" style="width: 300px; margin-left: 130px;"><br><br>
                        
                     </div> 
                     
                     <div class="form-group" style="width: 300px; margin-left: 560px;"><br><br>
                        
                         <input type="text" name="signaturemo" id="signaturemo"style="width: 320px;" placeholder="Signature" required value="<%=rs.getString(42)%>"readonly/><br>
                    	<input type="text" name="nomo" id="nomo"style="width: 320px;" placeholder="Name of Medical Officer (in Block Letters)" required value="<%=rs.getString(43)%>"readonly/><br>
                    	<input type="text" name="designation" id="designation"style="width: 320px;" placeholder="Designation" required value="<%=rs.getString(44)%>"readonly/><br>
                     	
                     	
                     </div>
                     
                </div>
                 <div class="form-row">
                    <div class="form-group" >
                        <label>Received By IO.</label>
                         <input type="text" name="signatureio" id="signatureio"style="width: 320px;" placeholder="Signature" required value="<%=rs.getString(45)%>"readonly/><br>
                    	<input type="text" name="nameio" id="nameio"style="width: 320px;" placeholder="Name" required value="<%=rs.getString(46)%>"/><br>
                    	<input type="text" name="rank" id="rank"style="width: 320px;" placeholder="Rank" required value="<%=rs.getString(47)%>"readonly/><br>
                     	<input type="text" name="beltno" id="beltno"style="width: 320px;" placeholder="Belt No" required value="<%=rs.getString(48)%>" readonly/><br>
                     	<input type="text" name="policestation" id="policestation"style="width: 320px;" placeholder="Police Station" required value="<%=rs.getString(49)%>" readonly/><br>
                    </div>
                    
                      <div class="form-group" style="width: 300px; margin-left: 130px;"><br><br>
                        
                     </div> 
                     
                     <div class="form-group" style="width: 300px; margin-left: 560px;"><br><br>
                        
                     	
                     </div>
                     
                </div>
                
                
                       <!--  <div class="form-submit">
                            <input type="submit" value="Cancel" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Register" class="submit" name="submit" id="submit" />
                        </div>
 -->


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