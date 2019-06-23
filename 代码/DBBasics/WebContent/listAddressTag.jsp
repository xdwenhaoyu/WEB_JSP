<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,dbexample.*"%>
<%
	//需要在工程的WEB-INF/lib文件夹添加jstl相关的库
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<title>展示数据</title>
</head>
<body>
	<%
		List<Address> listAddress = (List<Address>) request.getAttribute("listAddress");
	%>
	<div class="jumbotron container">
		<h1>展示数据</h1>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>地址ID</th>
					<th>地址</th>
					<th>城市</th>
					<th>州编码</th>
					<th>邮编</th>
					<th>删除</th>
					<th>更新</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${listAddress}">
					<tr>
						<td><c:out value="${row.addressID}" /></td>
						<td><c:out value="${row.addressLine1}" /></td>
						<td><c:out value="${row.city}" /></td>
						<td><c:out value="${row.stateProvinceID}" /></td>
						<td><c:out value="${row.postalCode}" /></td>
						<td><a
							href="delete.do?addressID=<c:out value="${row.addressID}" />">删除</a></td>
						<td><a
							href="load.do?addressID=<c:out value="${row.addressID}" />">更新</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p>
			<a class="btn btn-primary btn-lg" href="AddAddress.jsp" role="button">添加数据</a>
		</p>
	</div>
</body>
</html>