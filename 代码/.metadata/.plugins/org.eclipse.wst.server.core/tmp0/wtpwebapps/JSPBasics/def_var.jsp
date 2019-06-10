<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>变量声明示例</title>
</head>
<body>
	<%!int number = 0;%>
	<!--上一行代码声明一个变量number -->
	The number of this page is:
	<%=++number%>
</body>
</html>