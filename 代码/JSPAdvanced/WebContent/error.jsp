<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.io.*"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>捕获exception对象</title>
</head>
<body>
	捕捉到如下异常：
	<br>
	<%
		out.println(exception.getMessage() + "<br>");
		out.println("异常的堆栈信息为：<br>");
		exception.printStackTrace(new PrintWriter(out));
	%>
</body>
</html>