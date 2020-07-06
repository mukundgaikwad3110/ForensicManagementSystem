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
String id=request.getParameter("id");
String state=request.getParameter("country");
String act=request.getParameter("act");
String district=request.getParameter("state");
String section=request.getParameter("section");
String policestation=request.getParameter("policestation");
String act1=request.getParameter("act1");
String firno=request.getParameter("firno");
String section1=request.getParameter("section1");
String year=request.getParameter("year");
String otheractsection=request.getParameter("otheractandsection");
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
String state1=request.getParameter("country1");
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
String housenameno=request.getParameter("housenameno1");
String panno=request.getParameter("panno");
String votercardno=request.getParameter("votercardno");
String road=request.getParameter("road");
String nip1=request.getParameter("nip1");
String village1=request.getParameter("village1");
String post1=request.getParameter("Post1");
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
String query = "update fir set state=?,act=?,district=?,section=?,policestation=?,act1=?,firno=?,section1=?,year=?,otheractsection=?,date=?,day=?,datefrom=?,timefrom=?,dateto=?,timeto=?,irapsdate=?,irapstime=?,entryno=?,gdrdate=?,gdrtime=?,toi=?,writtenoral=?,dadfps=?,cbopnameno=?,aoname=?,noifany=?,ward=?,nameofroad=?,nip=?,village=?,post=?,state1=?,district1=?,city1=?,state2=?,district2=?,city2=?,complainantname=?,fatherhusbandname=?,birthdate=?,age=?,phoneno=?,passportno=?,dateofissue=?,placeofissue=?,occupation=?,religion=?,cast=?,subcast=?,address=?,ward1=?,housenameno=?,panno=?,votercardno=?,road=?,nip1=?,village1=?,post1=?,policestation1=?,state3=?,district3=?,city3=?,nationality=?,presentaddress=?,perticulars=?,totalvalues=?,recoveredproperties=?,unnaturaldeathcaseno=?,firbreif=?,nameofio=?,rank=?,no=?,refusedinvestigation=?,transferredto=?,state4=?,district4=?,signthumbofcomplainant=?,name=?,rank1=?,postingcodenoofio=? where id="+id;
pstmt = conn.prepareStatement(query);


pstmt.setString(1,state);
pstmt.setString(2, act);
pstmt.setString(3, district);
pstmt.setString(4, section);
pstmt.setString(5, policestation);
pstmt.setString(6, act1);

pstmt.setString(7,firno);
pstmt.setString(8, section1);
pstmt.setString(9, year);
pstmt.setString(10, otheractsection);
pstmt.setString(11, date);
pstmt.setString(12, day);


pstmt.setString(13,datefrom);
pstmt.setString(14, timefrom);
pstmt.setString(15, dateto);
pstmt.setString(16, timeto);
pstmt.setString(17, irapsdate);
pstmt.setString(18, irapstime);

pstmt.setString(19,entryno);
pstmt.setString(20, gdrdate);
pstmt.setString(21, gdrtime);
pstmt.setString(22, toi);
pstmt.setString(23, writtenoral);
pstmt.setString(24, dadfps);

pstmt.setString(25,cbopnameno);
pstmt.setString(26, aoname);
pstmt.setString(27, noifany);
pstmt.setString(28, ward);
pstmt.setString(29, nameofroad);
pstmt.setString(30, nip);

pstmt.setString(31,village);
pstmt.setString(32, post);
pstmt.setString(33, state1);
pstmt.setString(34, district1);
pstmt.setString(35, city1);
pstmt.setString(36, state2);

pstmt.setString(37,district2);
pstmt.setString(38, city2);
pstmt.setString(39, complainantname);
pstmt.setString(40, fatherhusbandname);
pstmt.setString(41, birthdate);
pstmt.setString(42, age);

pstmt.setString(43,phoneno);
pstmt.setString(44, passportno);
pstmt.setString(45, dateofissue);
pstmt.setString(46, placeofissue);
pstmt.setString(47, occupation);
pstmt.setString(48, religion);

pstmt.setString(49,cast);
pstmt.setString(50, subcast);
pstmt.setString(51, address);
pstmt.setString(52, ward1);
pstmt.setString(53, housenameno);
pstmt.setString(54, panno);

pstmt.setString(55,votercardno);
pstmt.setString(56, road);
pstmt.setString(57, nip1);
pstmt.setString(58, village1);
pstmt.setString(59, post1);
pstmt.setString(60, policestation1);

pstmt.setString(61,state3);
pstmt.setString(62, district3);
pstmt.setString(63, city3);
pstmt.setString(64, nationality);
pstmt.setString(65, presentaddress);
pstmt.setString(66, perticulars);

pstmt.setString(67,totalvalues);
pstmt.setString(68, recoveredproperties);
pstmt.setString(69, unnaturaldeathcaseno);
pstmt.setString(70, firbreif);
pstmt.setString(71, nameofio);
pstmt.setString(72, rank);

pstmt.setString(73,no);
pstmt.setString(74, refusedinvestigation);
pstmt.setString(75, transferredto);
pstmt.setString(76, state4);
pstmt.setString(77, district4);
pstmt.setString(78, signthumbofcomplainant);

pstmt.setString(79,name);
pstmt.setString(80, rank1);
pstmt.setString(81, postingcodenoofio);




int i = pstmt.executeUpdate();
if(i!=0)
{
	String query3 = "update guest_fir set state=?,act=?,district=?,section=?,policestation=?,act1=?,firno=?,section1=?,year=?,otheractsection=?,date=?,day=?,datefrom=?,timefrom=?,dateto=?,timeto=?,irapsdate=?,irapstime=?,entryno=?,gdrdate=?,gdrtime=?,toi=?,writtenoral=?,dadfps=?,cbopnameno=?,aoname=?,noifany=?,ward=?,nameofroad=?,nip=?,village=?,post=?,state1=?,district1=?,city1=?,state2=?,district2=?,city2=?,complainantname=?,fatherhusbandname=?,birthdate=?,age=?,phoneno=?,passportno=?,dateofissue=?,placeofissue=?,occupation=?,religion=?,cast=?,subcast=?,address=?,ward1=?,housenameno=?,panno=?,votercardno=?,road=?,nip1=?,village1=?,post1=?,policestation1=?,state3=?,district3=?,city3=?,nationality=?,presentaddress=?,perticulars=?,totalvalues=?,recoveredproperties=?,unnaturaldeathcaseno=?,firbreif=?,nameofio=?,rank=?,no=?,refusedinvestigation=?,transferredto=?,state4=?,district4=?,signthumbofcomplainant=?,name=?,rank1=?,postingcodenoofio=? where firno="+firno;
	pstmt=conn.prepareStatement(query3);
	pstmt.setString(1,state);
	pstmt.setString(2, act);
	pstmt.setString(3, district);
	pstmt.setString(4, section);
	pstmt.setString(5, policestation);
	pstmt.setString(6, act1);

	pstmt.setString(7,firno);
	pstmt.setString(8, section1);
	pstmt.setString(9, year);
	pstmt.setString(10, otheractsection);
	pstmt.setString(11, date);
	pstmt.setString(12, day);


	pstmt.setString(13,datefrom);
	pstmt.setString(14, timefrom);
	pstmt.setString(15, dateto);
	pstmt.setString(16, timeto);
	pstmt.setString(17, irapsdate);
	pstmt.setString(18, irapstime);

	pstmt.setString(19,entryno);
	pstmt.setString(20, gdrdate);
	pstmt.setString(21, gdrtime);
	pstmt.setString(22, toi);
	pstmt.setString(23, writtenoral);
	pstmt.setString(24, dadfps);

	pstmt.setString(25,cbopnameno);
	pstmt.setString(26, aoname);
	pstmt.setString(27, noifany);
	pstmt.setString(28, ward);
	pstmt.setString(29, nameofroad);
	pstmt.setString(30, nip);

	pstmt.setString(31,village);
	pstmt.setString(32, post);
	pstmt.setString(33, state1);
	pstmt.setString(34, district1);
	pstmt.setString(35, city1);
	pstmt.setString(36, state2);

	pstmt.setString(37,district2);
	pstmt.setString(38, city2);
	pstmt.setString(39, complainantname);
	pstmt.setString(40, fatherhusbandname);
	pstmt.setString(41, birthdate);
	pstmt.setString(42, age);

	pstmt.setString(43,phoneno);
	pstmt.setString(44, passportno);
	pstmt.setString(45, dateofissue);
	pstmt.setString(46, placeofissue);
	pstmt.setString(47, occupation);
	pstmt.setString(48, religion);

	pstmt.setString(49,cast);
	pstmt.setString(50, subcast);
	pstmt.setString(51, address);
	pstmt.setString(52, ward1);
	pstmt.setString(53, housenameno);
	pstmt.setString(54, panno);

	pstmt.setString(55,votercardno);
	pstmt.setString(56, road);
	pstmt.setString(57, nip1);
	pstmt.setString(58, village1);
	pstmt.setString(59, post1);
	pstmt.setString(60, policestation1);

	pstmt.setString(61,state3);
	pstmt.setString(62, district3);
	pstmt.setString(63, city3);
	pstmt.setString(64, nationality);
	pstmt.setString(65, presentaddress);
	pstmt.setString(66, perticulars);

	pstmt.setString(67,totalvalues);
	pstmt.setString(68, recoveredproperties);
	pstmt.setString(69, unnaturaldeathcaseno);
	pstmt.setString(70, firbreif);
	pstmt.setString(71, nameofio);
	pstmt.setString(72, rank);

	pstmt.setString(73,no);
	pstmt.setString(74, refusedinvestigation);
	pstmt.setString(75, transferredto);
	pstmt.setString(76, state4);
	pstmt.setString(77, district4);
	pstmt.setString(78, signthumbofcomplainant);

	pstmt.setString(79,name);
	pstmt.setString(80, rank1);
	pstmt.setString(81, postingcodenoofio);

	int k=pstmt.executeUpdate();
	if(k!=0)
	{
			System.out.println("Record has been Updated");
	}
pstmt.close();
}
else
{
System.out.println("failed to insert the data");
}
if(!conn.isClosed()){
	/* out.println("Your FIR Report is registered Successfully"); */
	out.println("<html><body><script>alert('Your FIR Report is Updated Successfully!!!'); window.location = 'FIRTableOfficer.jsp';</script><body><html>");
	conn.close();
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