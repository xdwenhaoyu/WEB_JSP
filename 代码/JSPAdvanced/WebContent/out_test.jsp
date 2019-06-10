<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page buffer="2kb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out对象示例</title>
</head>
<body>
	<h3>out对象常用方法示例</h3>
	<hr>
	<%
		for (int i = 0; i < 10; i++)
			out.println(i + "{剩余" + out.getRemaining() + "字节}<br>");
	%>
	缓存大小：<%=out.getBufferSize() + "字节<br>"%>
	剩余缓存大小：<%=out.getRemaining() + "字节<br>"%>
	自动刷新:<%=out.isAutoFlush()%>
</body>
</html>