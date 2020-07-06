<%@page import="java.io.OutputStream"%>
<%@ page contentType="application/pdf" %>

<%@ page trimDirectiveWhitespaces="true"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="net.sf.jasperreports.engine.design.JRDesignQuery"%>
<%@page import="net.sf.jasperreports.engine.xml.JRXmlLoader"%>
<%@page import="net.sf.jasperreports.engine.design.JasperDesign"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>
<%@ page import="net.sf.jasperreports.engine.*"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.InputStream"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<title>Image Example</title>
</head>
<body>
	<%
	//String emp_id=(String)session.getAttribute("id"); 
	String ncrno=request.getParameter("ncrno");
	//System.out.println(emp_id);
	System.out.println(ncrno);
		Connection conn = null;
	
	//String id=request.getParameter("employeeid");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/forensic", "root", "");
			
			
			//String report = "C:/Users/hp/eclipse-workspace/FMS/ProfileRpt.jrxml";
			JasperDesign jd=JRXmlLoader.load("C:/Users/hp/eclipse-workspace/FMS/PostMortemRpt.jrxml");
			String sql="select * from postmortem where ncrno="+ncrno;
			 JRDesignQuery newQuery=new JRDesignQuery();
			 newQuery.setText(sql);
			 jd.setQuery(newQuery); 
			 
			 
			 
			 
			 
			JasperReport jasperreport = JasperCompileManager
					.compileReport(jd);
			
			Map<String, Object> data = new HashMap<String, Object>();
			
			data.put("Image", this.getServletContext().getRealPath("/")+"/img/bg2.jpg");
			//data.put("Image", this.getServletContext().getRealPath("/")+"/images/green-goblin.png");
			
			JasperPrint jp = JasperFillManager.fillReport(jasperreport,
					data, conn);
			
			JasperExportManager.exportReportToPdfStream(jp, response.getOutputStream());
			response.getOutputStream().flush();
			response.getOutputStream().close();
			
		} catch (Exception e) {
			out.println(e);
		}
	%>
</body>
</html>