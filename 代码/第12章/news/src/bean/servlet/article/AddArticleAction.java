package bean.servlet.article;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.article.ArticleDAOImp;

public class AddArticleAction extends HttpServlet {

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
		String title=request.getParameter("title");
		String column_id=request.getParameter("column");
		int columnid=Integer.parseInt(column_id);
		String author=request.getParameter("author");
		String is_top=request.getParameter("istop");
		String _comment=request.getParameter("comment");	
		boolean istop=is_top==null?false:true;
		boolean comment=_comment==null?false:true;		
		String content=request.getParameter("EditorDefault");	
		int Articleid=ArticleDAOImp.insert(title,columnid,author,content,istop,comment);
		if (Articleid>0) {
			response.sendRedirect("/news/article/editNews.jsp?id="+Articleid);
		}
		else
		{
			response.sendRedirect("/news/common/failure.jsp");
		}
	}

	public void init() throws ServletException {
	}

}
