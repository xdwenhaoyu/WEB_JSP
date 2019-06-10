<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>方法声明示例</title>
</head>
<body>
	<!--下面的代码声明一个方法square( ) -->
	<%!double square(double x) {
		double result = Math.pow(x, 2);
		return result;
	}%>
	<%!double number = 45;%>
	The square of
	<%=number%>&nbsp;is:
	<%=square(number)%>
	<!--上一行代码使用声明的方法square( ) -->
</body>
</html>