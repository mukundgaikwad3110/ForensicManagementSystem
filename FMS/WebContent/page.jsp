<%@ page language="java" %>
<HTML>
<head> 
        <title>Get Parameter Example</title> 
        <meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, 
                                       initial-scale=1.0"> 
    </head> 
    <body>
<FORM  ACTION="upload.jsp" method="post" ENCTYPE="multipart/form-data">
  <center>
<table border="0" bgcolor=#ccFDDEE>
<tr>
<center><td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td><b>Choose the file To Upload:</b></td>
<td><INPUT NAME="file" TYPE="file"></td>
<td><b>First Name:</b></td>
<td> <input type="text" name="testparam"><br/></td></tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Send File"> </td></tr>
<table>
</center></FORM>
</body>
</HTML>