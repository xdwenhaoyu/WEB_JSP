<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--下面代码在JSP中通过useBean动作标签引入一个id为person,Java类为PersonBean的Bean实例-->
<jsp:useBean id="person" class="TestBeans.PersonBean" scope="page" />
<!--下一行代码利用表单beanTest中用户输入的值为person设置属性值 -->
<jsp:setProperty name="person" property="*" />

<html>
<head>
<meta charset="UTF-8">
<title>测试JavaBean PersonBean</title>
</head>
<body>
	姓名：<jsp:getProperty name="person" property="name" />
	<br>
	<!--获取person的属性name的属性值 -->
	婚否：<jsp:getProperty name="person" property="married" /><br>
	<!--获取person的属性deceased的属性值 -->
	<!-- 下面创建的表单beanTest让用户输入信息，为名为person的JavaBean 提供属性值 -->
	<form name="beanTest" method="post" action="testpersonbean.jsp">
		输入姓名：<input type="text" name="name" size="50"><br>
		选择婚否：<select name="married">
			<option value="false">Single</option>
			<option value="true">Married</option>
		</select> <input type="submit" value="Test the Bean">
	</form>
</body>
</html>