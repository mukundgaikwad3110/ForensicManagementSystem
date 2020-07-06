<%@page import="javax.print.attribute.standard.PageRanges"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<title>Loading</title>

<% 
String name=(String)session.getAttribute("sessname"); 
String emp_id=(String)session.getAttribute("id"); 
String id=request.getParameter("id");
String designation=(String)session.getAttribute("designation");
 //out.print("Hello User: Your name and id is: '"+name+"','"+emp_id+"','"+designation+"';");
 
 if(designation.equals("officer"))
 {
	 response.sendRedirect("OfficerPannel.jsp");
 }
%> 
<script>

    function pageRedirect() {
        window.location.replace("OfficerPannel.jsp");
    }      
    setTimeout("pageRedirect()", 3000);
</script>

<style>
/* Center the loader */
#loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #20B2AA;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
}
</style>
</head>

<body onload="myFunction()" style="margin:0;">
    <!-- <p><strong>Note:</strong> You will be redirected to the tutorialrepublic.com in 10 sec. You are not able to get back to this page by clicking the browser back button.</p> -->
    <div id="loader">
    </div>
    <div style="margin-top:400px; margin-left:608px; color:blue"><p>please Wait...</p></div>

<div style="display:none;" id="myDiv" class="animate-bottom">
  <!-- <h2>Tada!</h2>
  <p>Some text in my newly loaded page..</p> -->
</div>

<script>
var myVar;

function myFunction() {
  myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}

</script>
</body>
</html>
