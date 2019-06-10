<%@ page language="java" import="java.util.*,java.text.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>服务器时间</title>
</head>
<body>
	<%
		Date now = new Date();
		DateFormat d1 = DateFormat.getDateInstance();
		String str1 = d1.format(now);
		out.write("用Date方式显示时间：" + now + "<br>");
		out.write("用DateFormat.getDateInstance格式化时间后为：" + str1);
	%>
</body>
</html>