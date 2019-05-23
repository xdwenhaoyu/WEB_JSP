package bean.servlet.column;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.column.ColumnDAOImp;

public class AddColumnAction extends HttpServlet {

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//String url=request.getHeader("Referer");	
		String column_name=request.getParameter("column_name");
		String column_desc=request.getParameter("column_desc");	
		boolean status=ColumnDAOImp.insert(column_name,column_desc);
		if (status) {
			response.sendRedirect("/news/common/success.jsp");
		}
		else
		{
			response.sendRedirect("/news/common/failure.jsp");
		}
	}

	public void init() throws ServletException {
	}

}
