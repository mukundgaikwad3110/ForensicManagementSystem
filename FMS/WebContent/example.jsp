<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Create custom alert with sweetAlert jQuery plugin</title>
    <link href="css1/style.css" type="text/css" rel="stylesheet">
    <link href="css1/sweetalert.css" type="text/css" rel="stylesheet">
    <script src="css1/jquery-3.4.1.min.js" type="text/javascript"></script>
    <script src="css1/sweetalert.min.js" type="text/javascript"></script>
    
    <script type='text/javascript'>
    $( document ).ready(function() {

        // Message
        $("#but1").click(function(){
            var message = $("#message").val();
            if(message == ""){
            message  = "Your Are SuccessFully Registered !!!";
            }
            swal(message);
            
        });
        
        // With message and title
        // $("#but2").click(function(){
        //     var message = $("#message").val();
        //     var title = $("#title").val();
        //     if(message == ""){
        //     message  = "Your message";
        //     }
        //     if(title == ""){
        //     title = "Your message";
        //     }
        //     swal(title,message);
        // });

        // Show image
        // $("#but3").click(function(){
        //     var message = $("#message").val();
        //     var title = $("#title").val();
        //     if(message == ""){
        //         message  = "Your message";
        //     }
        //     if(title == ""){
        //         title = "Your message";
        //     }
        //     swal({
        //     title: title,
        //     text: message,
        //     imageUrl: "logo.png"
        //     });
        // });

        // Timer
        // $("#but4").click(function(){
        //     var message = $("#message").val();
        //     var title = $("#title").val();
        //     if(message == ""){
        //         message  = "Your message";
        //     }
        //     if(title == ""){
        //         title = "Your message";
        //     }
        //     message += "(close after 2 seconds)";
        //     swal({
        //         title: title,
        //         text: message,
        //         timer: 2000,
        //         showConfirmButton: false
        //     });
        // });
    });
   
    </script>
</head>
<body>
<table>
    <tr>
        <td>Title</td>
        <td><input type='text'  id='title'></td>
    </tr>
    <tr>
        <td>Message</td>
        <td><input type='text'  id='message'></td>
    </tr>
    <tr>
        <td colspan='2'><!-- <input type='button' value='Simple alert' id='but1'> -->
        <a id='but1'>Simple Alert</a>&nbsp;
            <input type='button' value='Alert with image' id='but3'>&nbsp;
        <!-- <input type='button' value='Alert with title' id='but2'>&nbsp;
        
        <input type='button' value='With timer' id='but4'> -->
        </td>
    </tr>
</table>
</body>
</html>