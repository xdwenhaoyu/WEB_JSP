<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,example.bean.*"%>
<%
	//需要在工程的WEB-INF/lib文件夹添加jstl相关的库
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>展示数据</title>
</head>
<body>

	<%
		List<Address> listAddress = (List<Address>) request.getAttribute("listAddress");
	%>

	<table border="1" style="width:100%">
		<tr>
			<th>AddressID</th>
			<th>AddressLine1</th>
			<th>City</th>
			<th>StateProvinceID</th>
			<th>PostalCode</th>
		</tr>
		<c:forEach var="row" items="${listAddress}">
			<tr>
				<td><c:out value="${row.addressID}" /></td>
				<td><c:out value="${row.addressLine1}" /></td>
				<td><c:out value="${row.city}" /></td>
				<td><c:out value="${row.stateProvinceID}" /></td>
				<td><c:out value="${row.postalCode}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>