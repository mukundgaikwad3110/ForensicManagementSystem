import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.http.HttpSession;
import javax.servlet.*;

@WebServlet("/EvidenceFIR")
@MultipartConfig(maxFileSize = 16177216)
public class EvidenceFIR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public EvidenceFIR() {
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
		Part part = request.getPart("evidence_image");
		Part part1 = request.getPart("evidence_audio");
		Part part2= request.getPart("evidence_video");
		
		
 
		if(part != null){
			try{
				Class.forName("com.mysql.jdbc.Driver");
				
			    con = DriverManager.getConnection(connectionURL, user, pass);
			    
			    /*ps = con.prepareStatement("insert into emp_reg(f_name,m_name,l_name,image,address,zipcode,gender,maritial_status,m_number,email,dob,age,qualification,specialization,designation,department,adhar_num, reg_date,pan_num)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");*/
			    ps = con.prepareStatement("insert into evidencefir(firno,date, evidence_type, etd, evidence_image,evidence_audio,evidence_video,info,emp_id)values(?,?,?,?,?,?,?,?,?)");
			    InputStream is = part.getInputStream();
  			    ps.setBlob(5, is);
  			    InputStream is1 = part1.getInputStream();
			    ps.setBlob(6, is1);
			    InputStream is2 = part2.getInputStream();
  			    ps.setBlob(7, is2);
  			    String firno=request.getParameter("firno");
  			    ps.setString(1,firno);
  				String date=request.getParameter("date");
  				ps.setString(2,date);
  				String evidence_type=request.getParameter("evidenceType");
  				ps.setString(3,evidence_type);	
  				String etd=request.getParameter("etd");
  				ps.setString(4,etd);
  				String emp_id=request.getParameter("emp_id");
  				ps.setString(9,emp_id);
  				String info=request.getParameter("info");
  				ps.setString(8,info);
  				
  				
				
				
			
			    //result = ps.executeUpdate();
			    int i = ps.executeUpdate();
		        if(i!=0)
		        {
		        	ps.close();
		        System.out.println("Evidence has been Registered");
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
		        	printWriter.print("<html><body><script>alert('Evidence has been Registered Successfully!!!'); window.location = 'EvidenceFIRTable.jsp';</script><body><html>");
		        	
		        	
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

	


