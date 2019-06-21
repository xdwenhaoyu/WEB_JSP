<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户认证</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		//获取login.jsp的表单中名字为username的文本框中用户输入的值
		String password = request.getParameter("password");
		//获取login.jsp的表单中名字为password的文本框中用户输入的值
		if ("admin".equals(username) && "123".equals(password))
		//通过if语句判断将客户端的页面重定向到哪个页面
		{
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>