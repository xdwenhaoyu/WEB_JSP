<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/validateCode.js"></script>
<script type="text/javascript">
function check()
{
	var user=document.getElementById("user");
	var comm=document.getElementById("comm");
	var validate=document.getElementById("validate");
	if(user.value=="")
		{
		alert("请输入昵称!");
		user.focus();
		return false;
		}
	if(comm.value=="")
	{
		alert("请输入验证码!");		
		comm.focus();
		return false;
		}
	}
function changeImg()
{
	var img=document.getElementsByTagName("img")[0];
    img.src="/news/validateCodeServlet?random="+Math.random();
	}

</script>
</head>
<body>
<div style="border: 1px solid blue;width: 500px">
				<form name="comment">					
					<div style="background: green; width: 100%">
						留言板
					</div>
					昵称：
					<input type="text" id="user" name="user" value="网友">
					&nbsp;&nbsp;&nbsp;验证码：
					<input type="text" id="comm" name="validate" size="4">
					<img src="/news/validateCodeServlet"
						onclick="changeImg()" />
					<span style="font-size: small"><a href="javascript:changeImg()">点击图片刷新</a></span>
					<br>
					<textarea id="content" name="content" style="width: 98%; height: 150px">
</textarea>
					<center>
						<input type="reset" value=" 重置 ">
						&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" value=" 提交 " onclick="validateCode()">
					</center>
				</form>
			</div>
</body>
</html>