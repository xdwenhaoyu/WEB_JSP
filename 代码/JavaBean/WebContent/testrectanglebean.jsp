<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="rectangle" class="TestBeans.RectangleBean" scope="page" />

<jsp:setProperty name="rectangle" property="width" value="10" />
<jsp:setProperty name="rectangle" property="height" value="20" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试JavaBean RectangleBean</title>
</head>
<body>
	矩形的宽为：<jsp:getProperty name="rectangle" property="width" /><br />
	矩形的高为：<jsp:getProperty name="rectangle" property="height" /><br />
	矩形的面积为：<jsp:getProperty name="rectangle" property="area" />
</body>
</html>