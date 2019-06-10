package bean.servlet.article;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.article.ArticleDAOImp;
import bean.statics.MakeHtml;

public class MakeArticle extends HttpServlet {

	@SuppressWarnings("deprecation")
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String _id = request.getParameter("id");
		int id=Integer.parseInt(_id);
		String path = request.getContextPath();
		System.out.println("path前:"+path);
		String basePath = request.getScheme() + "://" + request.getServerName()
				+ ":" + request.getServerPort() + path + "/";
		String serverPath = request.getRealPath(request.getRequestURI());
		System.out.println("serverPath:"+serverPath);
		System.out.println("request.getRequestURI():"+request.getRequestURI());
		System.out.println("request.getRequestURL():"+request.getRequestURL());
		
		serverPath=serverPath.replace('\\', '/');
		serverPath=serverPath.substring(0,serverPath.lastIndexOf(path));
		System.out.println(serverPath);
		
		String date = new java.text.SimpleDateFormat("yyMM").format(new Date());
		String filepath = serverPath + "/html/" + date + "/static_" + id
				+ ".html";
		String url = basePath + "article/articleDetail.jsp?id=" + id;
		System.out.println("filepath:"+filepath);
		System.out.println("url:"+url);
		String htmlurl = "../html/" + date + "/static_" + id + ".html";
		MakeHtml.writeHtml(filepath, MakeHtml.getHtmlCode(url));
		String htmlurl2=path+"/html/" + date + "/static_" + id + ".html";
		ArticleDAOImp.updateUrl(id, htmlurl2);
		response.sendRedirect(htmlurl);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
