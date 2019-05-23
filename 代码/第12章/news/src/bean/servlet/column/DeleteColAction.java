package bean.servlet.column;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.column.ColumnDAOImp;

public class DeleteColAction extends HttpServlet {

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
		String column_id=request.getParameter("column_id");	
		int columnid=Integer.parseInt(column_id);
		boolean status=ColumnDAOImp.delete(columnid);
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
