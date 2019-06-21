<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>猜字母游戏</title>
</head>
<body>
	<%
		//获取用户在表单的文本框guesschar中输入的字母
		String tempString = request.getParameter("guesschar");
		//获取session中存储的属性TempCharacter的值并转化成String类型
		String TempCharacter = session.getAttribute("TempCharacter").toString();
		//通过if语句判断用户猜测是否正确
		if (tempString != null) {
			if (TempCharacter.equalsIgnoreCase(tempString))
				out.println("恭喜您，您猜对了！");
			else
				out.println("您猜错了，加油哦！");
		}
	%>
	<br>
	<p>输入您所猜的字母：
	<form name="form1" action="guess_result.jsp" method="post">
		<input type="text" name="guesschar"> <input type="submit"
			value="提交" name="submit">
	</form>
	<a href="guess_char.jsp">重新开始新游戏</a>
</body>
</html>