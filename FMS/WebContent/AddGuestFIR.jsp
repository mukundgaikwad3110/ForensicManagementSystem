<%-- <%@page import="com.hp.hpl.jena.sparql.function.library.print"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
  <%@ page import ="java.sql.*" %>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String emp_id=(String)session.getAttribute("id"); 
String guest_id[]=request.getParameterValues("guestid");

String id=request.getParameter("id");
String state=request.getParameter("state");
String act=request.getParameter("act");
String district=request.getParameter("district");
String section=request.getParameter("section");
String policestation=request.getParameter("policestation");
String act1=request.getParameter("act1");
String firno=request.getParameter("firno");
String section1=request.getParameter("section1");
String year=request.getParameter("year");
String otheractsection=request.getParameter("otheractsection");
String date=request.getParameter("date");
String day=request.getParameter("day");
String datefrom=request.getParameter("datefrom");
String timefrom=request.getParameter("timefrom");
String dateto=request.getParameter("dateto");
String timeto=request.getParameter("timeto");
String irapsdate=request.getParameter("irapsdate");
String irapstime=request.getParameter("irapstime");
String entryno=request.getParameter("entryno");
String gdrdate=request.getParameter("gdrdate");

String gdrtime=request.getParameter("gdrtime");
String toi=request.getParameter("toi");
String writtenoral=request.getParameter("writtenoral");
String dadfps=request.getParameter("dadfps");
String cbopnameno=request.getParameter("cbopnameno");
String aoname=request.getParameter("aoname");
String noifany=request.getParameter("noifany");
String ward=request.getParameter("ward");
String nameofroad=request.getParameter("nameofroad");
String nip=request.getParameter("nip");
String village=request.getParameter("village");
String post=request.getParameter("post");
String state1=request.getParameter("state1");
String district1=request.getParameter("district1");
String city1=request.getParameter("city1");
String state2=request.getParameter("state2");
String district2=request.getParameter("district2");
String city2=request.getParameter("city2");
String complainantname=request.getParameter("complainantname");
String fatherhusbandname=request.getParameter("fatherhusbandname");

String birthdate=request.getParameter("birthdate");
String age=request.getParameter("age");
String phoneno=request.getParameter("phoneno");
String passportno=request.getParameter("passportno");
String dateofissue=request.getParameter("dateofissue");
String placeofissue=request.getParameter("placeofissue");
String occupation=request.getParameter("occupation");
String religion=request.getParameter("religion");
String cast=request.getParameter("cast");
String subcast=request.getParameter("subcast");
String address=request.getParameter("address");
String ward1=request.getParameter("ward1");
String housenameno=request.getParameter("housenameno");
String panno=request.getParameter("panno");
String votercardno=request.getParameter("votercardno");
String road=request.getParameter("road");
String nip1=request.getParameter("nip1");
String village1=request.getParameter("village1");
String post1=request.getParameter("post1");
String policestation1=request.getParameter("policestation1");

String state3=request.getParameter("state3");
String district3=request.getParameter("district3");
String city3=request.getParameter("city3");
String nationality=request.getParameter("nationality");
String presentaddress=request.getParameter("presentaddress");
String perticulars=request.getParameter("perticulars");
String totalvalues=request.getParameter("totalvalues");
String recoveredproperties=request.getParameter("recoveredproperties");
String unnaturaldeathcaseno=request.getParameter("unnaturaldeathcaseno");
String firbreif=request.getParameter("firbreif");
String nameofio=request.getParameter("nameofio");
String rank=request.getParameter("rank");

String no=request.getParameter("no");
String refusedinvestigation=request.getParameter("refusedinvestigation");
String transferredto=request.getParameter("transferredto");
String state4=request.getParameter("state4");
String district4=request.getParameter("district4");
String signthumbofcomplainant=request.getParameter("signthumbofcomplainant");
String name1=request.getParameter("name");
String rank1=request.getParameter("rank1");
String postingcodenoofio=request.getParameter("postingcodenoofio");
String guest=request.getParameter("guest");
//String guest_id=request.getParameter("id");



java.sql.Connection con = null;
java.sql.Statement stmt = null;
int result=0;
ResultSet rs=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");
	for(int i=0;i<guest_id.length;i++){
		//String sql="insert into caseguest(case_id,guest_id) values('"+case_id+"','"+guestid[i]+"')";
	String query = "insert into guest_fir(guest,emp_id,state,act,district,section,policestation,act1,firno,section1,year,otheractsection,date,day,datefrom,timefrom,dateto,timeto,irapsdate,irapstime,entryno,gdrdate,gdrtime,toi,writtenoral,dadfps,cbopnameno,aoname,noifany,ward,nameofroad,nip,village,post,state1,district1,city1,state2,district2,city2,complainantname,fatherhusbandname,birthdate,age,phoneno,passportno,dateofissue,placeofissue,occupation,religion,cast,subcast,address,ward1,housenameno,panno,votercardno,road,nip1,village1,post1,policestation1,state3,district3,city3,nationality,presentaddress,perticulars,totalvalues,recoveredproperties,unnaturaldeathcaseno,firbreif,nameofio,rank,no,refusedinvestigation,transferredto,state4,district4,signthumbofcomplainant,name,rank1,postingcodenoofio)values('"+guest_id[i]+"','"+emp_id+"','"+state+"','"+act+"','"+district+"','"+section+"','"+policestation+"','"+act1+"','"+firno+"','"+section1+"','"+year+"','"+otheractsection+"','"+date+"','"+day+"','"+datefrom+"','"+timefrom+"','"+dateto+"','"+timeto+"','"+irapsdate+"','"+irapstime+"','"+entryno+"','"+gdrdate+"','"+gdrtime+"','"+toi+"','"+writtenoral+"','"+dadfps+"','"+cbopnameno+"','"+aoname+"','"+noifany+"','"+ward+"','"+nameofroad+"','"+nip+"','"+village+"','"+post+"','"+state1+"','"+district1+"','"+city1+"','"+state2+"','"+district2+"','"+city2+"','"+complainantname+"','"+fatherhusbandname+"','"+birthdate+"','"+age+"','"+phoneno+"','"+passportno+"','"+dateofissue+"','"+placeofissue+"','"+occupation+"','"+religion+"','"+cast+"','"+subcast+"','"+address+"','"+ward1+"','"+housenameno+"','"+panno+"','"+votercardno+"','"+road+"','"+nip1+"','"+village1+"','"+post1+"','"+policestation1+"','"+state3+"','"+district3+"','"+city3+"','"+nationality+"','"+presentaddress+"','"+perticulars+"','"+totalvalues+"','"+recoveredproperties+"','"+unnaturaldeathcaseno+"','"+firbreif+"','"+nameofio+"','"+rank+"','"+no+"','"+refusedinvestigation+"','"+transferredto+"','"+state4+"','"+district4+"','"+signthumbofcomplainant+"','"+name1+"','"+rank1+"','"+postingcodenoofio+"')";
		
		PreparedStatement ps=con.prepareStatement(query);
		stmt = con.createStatement();	
	result = ps.executeUpdate();
	
	}
	}
catch(Exception e){
System.out.println(e);
}

if(result!=0){
	
	out.print("<html><body><script>alert('Guest is added sucessfully');window.location.href='FIRTableOfficer.jsp';</script><body><html>");
	
}
















%>
</body>
</html>