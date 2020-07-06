<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type = "text/javascript">
        
            function getConfirmation() {
            	
               var retVal = confirm("Do you want to continue ?");
               if( retVal == true ) {
            	   window.location = 'Login2.jsp';
                  return true;
               } else {
            	   window.location = 'EmployeeLogin.jsp';
                  return false;
               }
            }
         
      </script>     
   </head>
   
   <body>
      <p>Click the following button to see the result: </p>      
      <form>
         <input type = "button" value = "Click Me" onclick = "getConfirmation();" />
      </form>      

</body>
</html>