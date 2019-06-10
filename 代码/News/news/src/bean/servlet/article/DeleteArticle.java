package bean.servlet.article;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.article.ArticleDAOImp;

public class DeleteArticle extends HttpServlet {

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String artcleid=request.getParameter("id");	
		int Artcleid=Integer.parseInt(artcleid);
		boolean status=ArticleDAOImp.delete(Artcleid);	
		if(status){
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
