<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application对象实例</title>
</head>
<body>
	<H2>application对象实例</H2>
	<hr>
	<%
		int userCounter = 1;
		String sessionID = session.getId();
		StringBuffer users = new StringBuffer();
		if (application.getAttribute("count") != null) {
			users = users.append(application.getAttribute("users").toString());
			//根据sessionID判断是否是新的客户
			if (users.indexOf(sessionID) == -1) {
				userCounter = Integer.parseInt(application.getAttribute("count").toString());
				userCounter++;
				application.setAttribute("count", new Integer(userCounter));
				users = users.append("<br>" + sessionID);
				application.setAttribute("users", users.toString());
			}
		} else {
			//如果是第一位访问的客户
			users = users.append("<br>" + sessionID);
			application.setAttribute("users", users.toString());
			application.setAttribute("count", new Integer(userCounter));
		}
		out.println("当前容器的版本信息为：" + application.getServerInfo() + "<br>");
		out.println("在线人数为：" + application.getAttribute("count") + "<br>");
		out.println("在线SessionID为：" + users.toString() + "<br>");
	%>
</body>
</html>