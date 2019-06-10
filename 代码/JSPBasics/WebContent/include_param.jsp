<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include动作与param动作嵌套使用</title>
</head>
<body>
	使用param动作标签向show_paramvalue.jsp传递参数
	<br>
	<jsp:include page="show_paramvalue.jsp">
		<jsp:param name="number" value="1000" />
	</jsp:include>
</body>
</html>