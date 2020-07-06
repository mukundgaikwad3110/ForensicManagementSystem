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

@WebServlet("/LawyerRegistration")
@MultipartConfig(maxFileSize = 16177216)
public class LawyerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LawyerRegistration() {
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
			    ps = con.prepareStatement("insert into lawyerdetails(firstname,middlename, lastname, image, address, gender, m_status, m_number, email, dob, age, qualification, lawyertype, reg_date)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			    InputStream is = part.getInputStream();
			    ps.setBlob(4, is);
			    String firstname=request.getParameter("firstname");
			    ps.setString(1,firstname);
				String middlename=request.getParameter("middlename");
				ps.setString(2,middlename);
				String lastname=request.getParameter("lastname");
				ps.setString(3,lastname);	
				String address=request.getParameter("address");
				ps.setString(5,address);
				String gender=request.getParameter("gender");
				ps.setString(6,gender);
				String m_status=request.getParameter("maritalstatus");
				ps.setString(7,m_status);
				String m_number=request.getParameter("m_number");
				ps.setString(8,m_number);
				String email=request.getParameter("email");
				ps.setString(9,email);
				String dob=request.getParameter("dob");
				ps.setString(10,dob);
				String age=request.getParameter("age");
				ps.setString(11,age);
				String qualification=request.getParameter("degree");
				ps.setString(12,qualification);
				String lawyertype=request.getParameter("lawyertype");
				ps.setString(13,lawyertype);
				String reg_date=request.getParameter("lbrd");
				ps.setString(14,reg_date);
				
				
				
			
			    //result = ps.executeUpdate();
			    int i = ps.executeUpdate();
		        if(i!=0)
		        {
		        	ps.close();
		        System.out.println("Lawyer has been Registered");
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
		        	printWriter.print("<html><body><script>alert('You Are Registered As A Lawyer Successfully!!!'); window.location = 'LawyerDetails.jsp';</script><body><html>");
		        	
		        	
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

	


