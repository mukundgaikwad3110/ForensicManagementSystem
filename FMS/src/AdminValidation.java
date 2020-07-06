import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin")
public class AdminValidation extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter printWriter = resp.getWriter();
		
		String name = req.getParameter("uname");
		String pass = req.getParameter("pass");
		
		if(name.equals("Admin") && pass.equals("Admin"))
		{
			HttpSession httpSession = req.getSession();
			httpSession.setAttribute("name", "Hrishi Pawar");
			resp.sendRedirect("AdminPannel.jsp");
		}
		else
		{
			printWriter.print("<html><body><script>alert('Please Enter Valid Username And Password, And Try Again.');window.location.href='Login.jsp';</script><body><html>");
			
		}
	}
	
}











