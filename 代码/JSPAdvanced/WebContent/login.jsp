<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
</head>
<body>
	<form action="verify.jsp" method="post">
		<!--上一行代码将表单中输入的信息以post方式提交给verify.jsp进行处理-->
		用户名：<input type="text" name="username"><br> 密码：<input
			type="password" name="password"><br> <input
			type="submit" value="登录">
	</form>
</body>
</html>