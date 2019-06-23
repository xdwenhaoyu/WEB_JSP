<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
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
<title>添加数据</title>
</head>
<body>
	<div class="jumbotron container">
		<h1>添加数据</h1>
		<form method="post" action="add.do">
			<div class="form-group col-sm-4">
				<label for="addressLine1">地址</label> 
				<input type="text" id="addressLine1" name="addressLine1" class="form-control" placeholder="地址" />
			</div>
			<div class="form-group col-sm-4">
				<label for="city">城市</label> <input type="text" name="city" id="city"
					class="form-control" placeholder="城市" />
			</div>
			<div class="form-group col-sm-4">
				<label for="stateProvinceID">州编码</label> <input type="text"
					id="stateProvinceID" name="stateProvinceID" class="form-control" placeholder="州编码" />
			</div>
			<div class="form-group col-sm-4">
				<label for="postalCode">邮编</label> <input type="text"
					id="postalCode" name="postalCode" class="form-control" placeholder="邮编" />
			</div>
			<button type="submit" class="btn btn-primary">提交</button>
		</form>
	</div>
</body>
</html>