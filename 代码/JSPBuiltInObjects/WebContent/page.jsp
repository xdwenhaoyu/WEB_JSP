<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page对象示例</title>
</head>
<body>
	<h2>page对象方法举例</h2>
	<hr>
	<%
		out.println("JSP文件的类型是：" + "<br>" + page.getClass() + "<p>");
		out.println("page对象的哈希码值是：" + "<br>" + this.hashCode() + "<p>");
		out.println("page对象的Servlet信息是：" + "<br>" + this.getServletInfo() + "<p>");
	%>
</body>
</html>