package bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginAction extends HttpServlet {

	public LoginAction() {
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		ResultSet rs=null;
		DB db = new DB();
		Connection conn = db.getCon();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from userinfo where username='" + username + "' and password='"
					+ password + "'";
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("/news/admin/calendar.htm");			
			}
			response.sendRedirect("login.htm");
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
