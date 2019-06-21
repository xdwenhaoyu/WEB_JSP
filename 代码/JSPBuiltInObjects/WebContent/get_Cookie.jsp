<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>获取Cookie</title>
</head>
<body>
	<%
		//以数组形式获取所有的Cookie
		Cookie[] cookies = request.getCookies();
		for (Cookie c : cookies)
		//运用for循环输出所有Cookie的名字和值
		{
			out.println(c.getName() + " " + c.getValue() + "<br>");
		}
	%>
</body>
</html>