<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setContentType用法示例</title>
</head>
<body>
	<%
		response.setContentType("application/x-msexcel;charset=UTF-8");
		response.setHeader("Content-Disposition", "inline; filename=excel.xls");
	%>
	<!--上一行代码设置客户端的内容类型为excel-->
	<jsp:include page="test.txt"></jsp:include>
</body>
</html>