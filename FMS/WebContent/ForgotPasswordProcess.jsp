<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");

String designation=(String)session.getAttribute("designation"); 
String emp_id=(String)session.getAttribute("id"); 


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/forensic";
con = DriverManager.getConnection(url, "root", "");
st = con.createStatement();
ResultSet rs = st.executeQuery("select emp_id, password from permanent_emp where password= '"+ OldPassword + "'");
if (rs.next()) { 
pass = rs.getString("password");
} 
if(Newpass.equals(conpass))
{
if (pass.equals(OldPassword)) {
st = con.createStatement();
int i = st.executeUpdate("update permanent_emp set password='"+ Newpass + "' where emp_id='"+emp_id+"'" );


if(designation.equals("Officer"))
{
	out.print("<html><body><script>alert('Password changed successfully !!!'); window.location = 'OfficerPannel.jsp';</script><body><html>");
}
if(designation.equals("Supervisor"))
{
	out.print("<html><body><script>alert('Password changed successfully !!!'); window.location = 'SupervisorPannel.jsp';</script><body><html>");
}
if(designation.equals("Guest"))
{
	out.print("<html><body><script>alert('Password changed successfully !!!'); window.location = 'GuestPannel.jsp';</script><body><html>");
}

st.close();
con.close();
} else {
	out.print("<html><body><script>alert('Old Password doesn't match !!!'); window.location = 'ChangePassword.jsp';</script><body><html>");

}
}else{
	out.print("<html><body><script>alert('New password and confirm password is not matching!!!'); window.location = 'ChangePassword.jsp';</script><body><html>");

}

} catch (Exception e) {
out.println(e);
}
%>