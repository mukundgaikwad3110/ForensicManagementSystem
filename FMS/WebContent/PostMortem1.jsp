<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String name=(String)session.getAttribute("sessname"); 
String emp_id=(String)session.getAttribute("id"); 
 //out.print("Hello User: Your name and id is: '"+name+"','"+emp_id+"';"); 
%> 

<%
String ncrno=request.getParameter("ncrno");
/* System.out.println(ncrno); */
String date=request.getParameter("date");
String bname=request.getParameter("bname");
String drname=request.getParameter("drname");
String dtedb=request.getParameter("dtedb");
String time=request.getParameter("time");
String nod=request.getParameter("nod");
String address=request.getParameter("address");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String bbb=request.getParameter("bbb");


String identy=request.getParameter("identy");
String length=request.getParameter("length");
String weight=request.getParameter("weight");
String physique=request.getParameter("physique");
String idfeatures=request.getParameter("idfeatures");
String clothes=request.getParameter("clothes");


String coe=request.getParameter("coe");
String no=request.getParameter("no");
String nails=request.getParameter("nails");
String scalp=request.getParameter("scalp");
String skull=request.getParameter("skull");

String brain=request.getParameter("brain");

String mouth=request.getParameter("mouth");
String vocalcords=request.getParameter("vocalcords");
String necktissues=request.getParameter("necktissues");

String thyroid=request.getParameter("thyroid");


String ribs=request.getParameter("ribs");

String oesophagus=request.getParameter("oesophagus");
String trachea=request.getParameter("trachea");
String diaphragm=request.getParameter("diaphragm");

String pleural=request.getParameter("pleural");

String lungs=request.getParameter("lungs");

String heart=request.getParameter("heart");
String lbv=request.getParameter("lbv");
String coaw=request.getParameter("coaw");

String spleen=request.getParameter("spleen");
String stomach=request.getParameter("stomach");

String kidneys=request.getParameter("kidneys");
String gall=request.getParameter("gall");
String signaturemo=request.getParameter("signaturemo");

String nomo=request.getParameter("nomo");
String designation=request.getParameter("designation");

String signatureio=request.getParameter("signatureio");
String nameio=request.getParameter("nameio");
String rank=request.getParameter("rank");

String beltno=request.getParameter("beltno");
String policestation=request.getParameter("policestation");












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
String query = "insert into postmortem (ncrno,emp_id,date,bname,drname,dtedb,time,nod,address,age,gender,bbb,identy,length,weight,physique,idfeatures,clothes,coe,no,nails,scalp,skull,brain,mouth,vocalcords,necktissues,thyroid,ribs,oesophagus,trachea,diaphragm,pleural,lungs,heart,lbv,coaw,spleen,stomach,kidneys,gall,signaturemo,nomo,designation,signatureio,nameio,rank,beltno,policestation)values('"+ncrno+"','"+emp_id+"','"+date+"','"+bname+"','"+drname+"','"+dtedb+"','"+time+"','"+nod+"','"+address+"','"+age+"','"+gender+"','"+bbb+"','"+identy+"','"+length+"','"+weight+"','"+physique+"','"+idfeatures+"','"+clothes+"','"+coe+"','"+no+"','"+nails+"','"+scalp+"','"+skull+"','"+brain+"','"+mouth+"','"+vocalcords+"','"+necktissues+"','"+thyroid+"','"+ribs+"','"+oesophagus+"','"+trachea+"','"+diaphragm+"','"+pleural+"','"+lungs+"','"+heart+"','"+lbv+"','"+coaw+"','"+spleen+"','"+stomach+"','"+kidneys+"','"+gall+"','"+signaturemo+"','"+nomo+"','"+designation+"','"+signatureio+"','"+nameio+"','"+rank+"','"+beltno+"','"+policestation+"')";




pstmt = conn.prepareStatement(query);
int i = pstmt.executeUpdate();
if(i!=0)
{
	pstmt.close();
System.out.println("Record has been inserted");
}
else
{
System.out.println("failed to insert the data");
}
if(!conn.isClosed()){
	/* out.println("Your NCR Report is registered Successfully"); */
	out.println("<html><body><script>alert('Your Post-Mortam Form is registered Successfully!!!'); window.location = 'PostMortemGuestTable.jsp';</script><body><html>");
	conn.close();
}

}
catch (Exception e)
{
	out.println("Unable to connect to database.");
System.out.println(e);
}
%>
</body>
</html>