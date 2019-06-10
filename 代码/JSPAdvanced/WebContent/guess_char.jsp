<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>猜字母游戏</title>
</head>
<body>
	下面，我们一起来玩一个游戏：猜字母游戏
	<br> 游戏规则：电脑会随机自动生成一个字母，请您猜出这个字母是什么。字母忽略大小写。
	<br>
	<%
		//声明一个包含26个英文字母的字符串数组
		String charString = new String("abcdedfghijklmnopqrstuvwxyz");
		//随机生成了一个1-26个之间的整数数字
		int charNumber = (int) (Math.random() * 100 + 1) % 26 - 1;
		//以charNumber为下标取对应字母的字符串中的字符
		Character TempCharacter = new Character(charString.charAt(charNumber));
		//将TempCharacter作为属性存储到session中
		session.setAttribute("TempCharacter", TempCharacter);
	%>
	<br>
	<p>请输入您所猜的字母：
	<form name="form" action="guess_result.jsp" method="post">
		<input type="text" name="guesschar"> <input type="submit"
			value="提交" name="submit">
	</form>
</body>
</html>