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
import java.sql.ResultSet;

/**
 * Servlet implementation class Login
 */

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String checkMail = req.getParameter("loginMail");
		String checkPass = req.getParameter("loginPass");
		
		PrintWriter out = res.getWriter();
		try {
//			Class.forName("com.sql.cj.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration_DB", "root", "root");
			
			PreparedStatement ps = con.prepareStatement("select * from Register Where Email=? and Password=?");
			ps.setString(1, checkMail);
			ps.setString(2, checkPass);
			ResultSet rs = ps.executeQuery();
//			System.out.println(rs.getString("Password")+ rs.getString("Email"));
			if(rs.next()) {
				System.out.println("Login Successfull");
//				res.setContentType("text/html");
//				out.print("<h3 style = 'color:green'> Login Successfull </h3> ");
				RequestDispatcher rd = req.getRequestDispatcher("/Profile.jsp");
				rd.include(req, res);
			}
			else {
				System.out.println("Login UnSuccessfull");
				res.setContentType("text/html");
				out.print("<h2 style = 'color:red'> --->Login failed </h2> ");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, res);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
