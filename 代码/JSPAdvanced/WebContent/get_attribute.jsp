<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request对象的getAttribute方法</title>
</head>
<body>
	request对象中添加的属性info的值为：
	<%=request.getAttribute("info")%>
	<!--上一行代码获取reqeust对象的属性info的值-->
</body>
</html>