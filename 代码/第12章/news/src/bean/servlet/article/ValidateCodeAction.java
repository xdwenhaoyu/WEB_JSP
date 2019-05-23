package bean.servlet.article;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.message.LeaveMessageDAOImp;

public class ValidateCodeAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String sessioncode = (String) session.getAttribute("validate");
		String code = request.getParameter("vCode").toLowerCase();
		String nickname=request.getParameter("nickname");
		nickname=nickname==null?"网友":nickname;
		nickname=URLDecoder.decode(nickname, "UTF-8");
		String content=request.getParameter("content");
		content=URLDecoder.decode(content, "UTF-8");
		String ip=request.getRemoteAddr();
		if (code == null||code=="") {
			out.println("请输入验证码！");
			return;
		} else if (!sessioncode.equals(code)) {
			out.println("验证码错误！");
			return;
		} else {
			LeaveMessageDAOImp.insert(nickname,content,ip);
			out.println("操作成功！");
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
