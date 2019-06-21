<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext示例</title>
</head>
<body>
	使用pageContext对象读取session，并向session绑定两个属性：
	<br>
	<%
		String username = "Marry";
		String password = "12345";
		HttpSession mySession = pageContext.getSession();
		mySession.setAttribute("username", username);
		mySession.setAttribute("password", password);
		out.println("Session bind username:" + session.getAttribute("username") + "<br>");
		out.println("Session bind password:" + session.getAttribute("password") + "<br>");
	%>
	<hr>
	用pageContext对象直接添加application范围内的属性，并读取该值：
	<br>
	<%
		pageContext.setAttribute("School", "XiDian University", PageContext.APPLICATION_SCOPE);
		out.println(pageContext.getAttribute("School", PageContext.APPLICATION_SCOPE) + "<br>");
	%>
	也可以用application对象直接读取该属性值:
	<%=application.getAttribute("School")%>P
</body>
</html>