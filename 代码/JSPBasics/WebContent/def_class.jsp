<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>声明类</title>
</head>
<body>
	<p>请输入一个数：</p>
	<br>
	<form name="form" method="post" action="def_class.jsp">
		<input type="text" name="number" value="1"> <input
			type="submit" name="submit" value="送出">
	</form>
	<!--下面的代码声明一个类SquareRoot-->
	<%!public class SquareRoot {
		double number;

		SquareRoot(double number) {
			this.number = number;
		}

		double compute() {
			return Math.sqrt(number);
		}
	}%>
	<%
		String str = request.getParameter("number");
		double i;
		if (str != null) {
			i = Double.valueOf(str).doubleValue();
		} else {
			i = 1;
		}
		SquareRoot squareRoot = new SquareRoot(i);//由类SquareRoot生成对象squareRoot
	%>
	<p><%=i%>的平方根是： <br>
		<%=squareRoot.compute()%></p>
	<!--调用对象squareRoot的compute()方法-->

</body>
</html>