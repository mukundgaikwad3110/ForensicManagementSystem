

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Suspects
 */
@WebServlet("/Suspects")
@MultipartConfig(maxFileSize = 16177216)
public class Suspects extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Suspects() {
        super();
        // TODO Auto-generated constructor stub
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
			    ps = con.prepareStatement("insert into suspects(firno,firstname,middlename,lastname,image,address,gender,mobno,emp_id)values(?,?,?,?,?,?,?,?,?)");
			    InputStream is = part.getInputStream();
			    ps.setBlob(5, is);
			    
			    String firno=request.getParameter("firno");
			    ps.setString(1,firno);
			    String firstname=request.getParameter("firstname");
			    ps.setString(2,firstname);
			    
				String middlename=request.getParameter("middlename");
				ps.setString(3,middlename);
				String lastname=request.getParameter("lastname");
				ps.setString(4,lastname);	
				String address=request.getParameter("address");
				ps.setString(6,address);
				String gender=request.getParameter("gender");
				ps.setString(7,gender);
				
				String m_number=request.getParameter("m_number");
				ps.setString(8,m_number);
				String emp_id=request.getParameter("emp_id");
				ps.setString(9,emp_id);
				
				
			
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
		        	printWriter.print("<html><body><script>alert('Suspects Registered Successfully!!!'); window.location = 'SuspectsFIRTable.jsp';</script><body><html>");
		        	
		        	
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
		
		
		 

	        }
	      
		
		
	}

	


