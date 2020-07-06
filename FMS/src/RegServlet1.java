import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet("/RegServlet1")
@MultipartConfig(maxFileSize = 16177216)
public class RegServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public RegServlet1() {
        super();
  
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter printWriter = response.getWriter();
		String connectionURL = "jdbc:mysql://localhost:3306/forensic";
		String user = "root";
		String pass = "";
		int result = 0;
		Connection con = null;
		PreparedStatement ps =null;
		Part part = request.getPart("image");
 
		if(part != null){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				
			    con = DriverManager.getConnection(connectionURL, user, pass);
			    
			    /*ps = con.prepareStatement("insert into emp_reg(f_name,m_name,l_name,image,address,zipcode,gender,maritial_status,m_number,email,dob,age,qualification,specialization,designation,department,adhar_num, reg_date,pan_num)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");*/
			    ps = con.prepareStatement("insert into registered_emp1(f_name,m_name,l_name,image,address,zipcode,gender,maritial_status,m_number,email,dob,age,qualification,specialization,designation,department,adhar_num, reg_date,pan_num)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			    InputStream is = part.getInputStream();
			    ps.setBlob(4, is);
			    String f_name=request.getParameter("f_name");
			    ps.setString(1,f_name);
				String m_name=request.getParameter("m_name");
				ps.setString(2,m_name);
				String l_name=request.getParameter("l_name");
				ps.setString(3,l_name);	
				String address=request.getParameter("address");
				ps.setString(5,address);
				String gender=request.getParameter("gender");
				ps.setString(7,gender);
				String m_status=request.getParameter("maritalstatus");
				ps.setString(8,m_status);
				String m_number=request.getParameter("m_number");
				ps.setString(9,m_number);
				String email=request.getParameter("email");
				ps.setString(10,email);
				String dob=request.getParameter("date");
				ps.setString(11,dob);
				String age=request.getParameter("age");
				ps.setString(12,age);
				String high_qualification=request.getParameter("degree");
				ps.setString(13,high_qualification);
				String specialization=request.getParameter("specialization");
				ps.setString(14,specialization);
				String designation=request.getParameter("designation");
				ps.setString(15,designation);
				String department=request.getParameter("department");
				ps.setString(16,department);
				String adhar_num=request.getParameter("adhar_num");
				ps.setString(17,adhar_num);
				String pan_num=request.getParameter("txtPANCard");
				ps.setString(19,pan_num);
				String zipcode=request.getParameter("zipcode");
				ps.setString(6,zipcode);
				DateFormat df=new SimpleDateFormat("dd/MM/yyyy");
				Date d=new Date();
				df.format(d);
				ps.setString(18,df.format(d));
				
			
			    //result = ps.executeUpdate();
			    int i = ps.executeUpdate();
		        if(i!=0)
		        {
		        	ps.close();
		        System.out.println("Record has been inserted");
		        	//request.setAttribute("alertMsg", "Record has been inserted");


		        }
		        else
		        {
		        System.out.println("failed to insert the data");
		        }
		        if(!con.isClosed())
		        {
		        	/*System.out.println("Hi "+f_name);
		        	System.out.println("You Are Registered As A Employee Successfully!!!");*/
		        	//response.sendRedirect("ResultForPermanentEmployee.jsp");
		        	printWriter.print("<html><body><script>alert('You Are Registered As A Employee Successfully!!!'); window.location = 'Login2.jsp';</script><body><html>");
		        	
		        	
		        	con.close();
		        }
			}
			catch(Exception e){
				System.out.println(e);
			}	
			finally{
				if(con != null){
					try{
						con.close();
					}
					catch(Exception e){
						e.printStackTrace();
					}
				}
			}
		}
		
		/*if(result > 0)
		{
	    	response.sendRedirect("result.jsp?message=Image+Uploaded");
	    	
	    }
		else
		{
			response.sendRedirect("result.jsp?message=Some+Error+Occurred");
		}*/
		 

	        }
	      
		
		
	}

	


