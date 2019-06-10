<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>接收参数页面</title>
</head>
<body>
	由inlude动作标签嵌套Param动作标签传递过来的参数值为：
	<%=request.getParameter("number")%>
</body>
</html>