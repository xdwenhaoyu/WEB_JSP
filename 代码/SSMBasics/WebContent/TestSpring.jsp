<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page
	import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@ page import="org.springframework.web.context.ContextLoader"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		ApplicationContext ctx = new ClassPathXmlApplicationContext("UDiskBeans.xml");
		//默认applicationContext.xml
		//ApplicationContext ctx = ContextLoader.getCurrentWebApplicationContext();
		testSpring.ComputerService computerService = ctx.getBean(testSpring.ComputerService.class);
		out.println(computerService.toString());
	%>

</body>
</html>