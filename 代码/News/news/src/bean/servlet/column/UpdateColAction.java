package bean.servlet.column;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.column.ColumnDAOImp;

public class UpdateColAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String column_title = request.getParameter("columntitle");
		column_title = URLDecoder.decode(column_title, "UTF-8");
		String column_introduce = request.getParameter("column_desc");
		column_introduce = URLDecoder.decode(column_introduce, "UTF-8");
		String id = request.getParameter("id");
		int id2 = Integer.parseInt(id);
		ColumnDAOImp.update(id2, column_title, column_introduce);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
