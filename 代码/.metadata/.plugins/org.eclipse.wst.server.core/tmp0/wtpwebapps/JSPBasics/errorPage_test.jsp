<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My JSP 'errorPage_test.jsp' starting page</title>
</head>
<body>
	<%
		int[] ints = new int[] { 1, 2, 3, 4 };
		out.write(ints[4]);
	%>
</body>
</html>