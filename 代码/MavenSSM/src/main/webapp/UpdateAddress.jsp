<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,dbexample.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<title>修改数据</title>
</head>
<body>
	<div class="jumbotron container">
		<h1>修改数据</h1>
		<form method="post" action="update.do">
			<input type="hidden" name="addressID"
				value="<c:out value="${address.addressID}" />" />
			<div class="form-group col-sm-4">
				<label for="addressLine1">地址</label> <input type="text"
					name="addressLine1" class="form-control"
					value="<c:out value="${address.addressLine1}" />" />
			</div>
			<div class="form-group col-sm-4">
				<label for="city">城市</label> <input type="text" name="city"
					class="form-control" value="<c:out value="${address.city}" />" />
			</div>
			<div class="form-group col-sm-4">
				<label for="stateProvinceID">州编码</label> <input type="text"
					name="stateProvinceID" class="form-control"
					value="<c:out value="${address.stateProvinceID}" />" />
			</div>
			<div class="form-group col-sm-4">
				<label for="postalCode">邮编</label> <input type="text"
					name="postalCode" class="form-control"
					value="<c:out value="${address.postalCode}" />" />
			</div>
			<button type="submit" class="btn btn-primary">提交</button>
		</form>
	</div>
</body>
</html>