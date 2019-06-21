<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request的setAttribute方法</title>
</head>
<body>
	本页采用request对象设置属性info
	<%
	request.setAttribute("info", "网站设计与开发");%>
	<!--上一行代码为request对象设置属性info，及其值-->
	<jsp:forward page="get_attribute.jsp" />
	<!--上一行代码会将页面跳转到get_Attribute.jsp-->
</body>
</html>