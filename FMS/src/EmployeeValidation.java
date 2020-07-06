import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EmployeeValidation")
public class EmployeeValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter printWriter = resp.getWriter();
		 HttpSession session=req.getSession(); 
		 
		 String emp_id=req.getParameter("id");
		 session.setAttribute("id",emp_id);
	         
		String designation = req.getParameter("employee");
		session.setAttribute("designation",designation);
		 
		
		String name = req.getParameter("username");
		session.setAttribute("sessname",name); 
		//printWriter.println("<html><body><script>alert('User name or password is incorrect..Try Again.'); window.location = 'EmployeeLogin.jsp';</script><body><html>");
		
		String pass = req.getParameter("pass");
		
		
		java.sql.Connection con = null;
		java.sql.Statement stmt = null;
	
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/forensic","root","");
			String qry = "select * from  permanent_emp";		
			stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(qry);
			
			while(rs.next())
			{
				String ename = rs.getString(2);
				 
				String designation1 = rs.getString(15);
				String uname = rs.getString(19);
				String pass1 =rs.getString(20);
				
				
				if(designation.equals(designation1) && name.equals(uname) && pass.equals(pass1))
				{
					if(designation.equals("Officer"))
					{
						
						HttpSession httpSession = req.getSession();
						httpSession.setAttribute("ename", ename);
						httpSession.setAttribute("designation", designation1);
						httpSession.setAttribute("uname", uname);
						//printWriter.print("<html><body><script>alert('User name or password is correct !!!'); window.location = 'OfficerPannel.jsp';</script><body><html>");
						/*RequestDispatcher dis = req.getRequestDispatcher("OfficerPannel.jsp");
						dis.forward(req, resp);*/
						 resp.sendRedirect("WelcomeOfficer.jsp");
					}
					
					if(designation.equals("Supervisor"))
					{
						HttpSession httpSession = req.getSession();
						httpSession.setAttribute("ename", ename);
						httpSession.setAttribute("designation", designation1);
						httpSession.setAttribute("uname", uname);
						
						resp.sendRedirect("WelcomeOfficer.jsp");
						/*RequestDispatcher dis = req.getRequestDispatcher("SupervisorPannel.jsp");
						dis.forward(req, resp);*/
					}
					
					if(designation.equals("Guest"))
					{
						HttpSession httpSession = req.getSession();
						httpSession.setAttribute("ename", ename);
						httpSession.setAttribute("designation", designation1);
						httpSession.setAttribute("uname", uname);
						
						resp.sendRedirect("WelcomeOfficer.jsp");
						
						/*RequestDispatcher dis = req.getRequestDispatcher("GuestPannel.jsp");
						dis.forward(req, resp);*/
					}
				}
				
			}
				
			printWriter.print("<html><body><script>alert('User name or password is incorrect..Try Again.'); window.location = 'EmployeeLogin.jsp';</script><body><html>");
		
				
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
	}
	
}

