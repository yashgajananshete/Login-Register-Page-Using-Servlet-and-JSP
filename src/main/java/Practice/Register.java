package Practice;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class Register
 */

public class Register extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		System.out.println(name+ email+ pass+ gender+ city);
		PrintWriter out = res.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration_DB", "root", "root");
			
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, gender);
			ps.setString(5, city);
			
			int count = ps.executeUpdate();
			System.out.println(count);
			if(count>0) {
				res.setContentType("text/html");
				out.print("<h3 style = 'color:green'> User Register Succesfully </h3> ");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, res);
			}else {
				res.setContentType("text/html");
				out.print("<h3 style = 'color:red'> User Registeration Unsuccessful </h3> ");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, res);
			}
		} catch (Exception e) {
			// TODO: handle exception
			res.setContentType("text/html");
			if(e.getMessage().equals("Duplicate entry '"+email+"' for key 'register.PRIMARY'")) {
				out.print("<h4 style = 'color:red'>Email already registered. Log in now.</h4>");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp"); 
				rd.include(req, res);
			}
			else {
				out.print("<h3 style = 'color:red' > Exception Occured :"+e.getMessage()+"</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, res);
				e.printStackTrace();
			}
			
		}
	}

}
