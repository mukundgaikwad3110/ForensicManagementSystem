<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "forensic";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>Register Id</td>
<td>Name</td>
<td>Photo</td>
<td>Address</td>
<td>Gender</td>

<td>Marital Status</td>
<td>Mobile No.</td>
<td>Email</td>
<td>DOB</td>
<td>Age</td>
<td>Qualification</td>
<td>Specialization</td>
<td>Designation</td>
<td>Department</td>
<td>Adhar No</td>



</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from emp_reg";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("reg_id") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("photo") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("maritial_status") %></td>
<td><%=resultSet.getString("m_number") %></td>

<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("qualification") %></td>
<td><%=resultSet.getString("specialization") %></td>
<td><%=resultSet.getString("designation") %></td>

<td><%=resultSet.getString("department") %></td>
<td><%=resultSet.getString("adhar_num") %></td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>