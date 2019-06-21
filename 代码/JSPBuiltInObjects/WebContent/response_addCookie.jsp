<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加Cookie</title>
</head>
<body>
	姓名：<%=request.getParameter("username")%><br>
	年龄：<%=request.getParameter("age")%>
	<%
		String username = request.getParameter("username");
		String age = request.getParameter("age");
		//创建一个新的Cookie对象c1
		Cookie c1 = new Cookie("username", username);
		//创建一个新的Cookie对象c2
		Cookie c2 = new Cookie("age", age);
		//设置Cookie对象c1和c2的有效期为24*3600秒，即24小时
		c1.setMaxAge(24 * 3600);
		c2.setMaxAge(24 * 3600);
		//向客户端增加Cookie c1和c2
		response.addCookie(c1);
		response.addCookie(c2);
	%>
</body>
</html>