<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request对象示例</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<h3>收集用户信息如下：</h3>
	<br> 您的姓名是：<%=request.getParameter("name")%>
	<!--上一行代码采用request.getParameter( )方法获取表单user-info中名字为”name”的文本框中用户输入的信息，数据类型为String-->
	<br> 您的性别是：<%=request.getParameter("sex")%>
	<br> 您的年龄是：<%=request.getParameter("age")%>
	<br> 您的个人爱好是：<%=request.getParameter("hobbies")%>
	<!--上一行代码采用request.getParameter( )方法获取表单user-info中名字为"hobbies"的下拉列表菜单中用户所选项的value值-->
	<br>
</body>
</html>