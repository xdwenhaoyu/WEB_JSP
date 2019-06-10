<%@ page language="java" import="java.util.*,bean.comment.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%String _articleid=request.getParameter("id");
  int articleid=Integer.parseInt(_articleid);
  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户评论</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="../js/validateCodes.js"></script>
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
  <%
  List<LeaveComment> comment=LeaveCommentDAOImp.select(articleid);
 %>
<div style="width: 500px;"> 
<fieldset>
<legend>用户评论</legend><br/>
 <%
  for(int i=0;i<comment.size();i++)
  {
%>
<div style="border-bottom:1px blue dashed;"></div><br/>
<div>昵称：<%=comment.get(i).getNickname() %>&nbsp;&nbsp;&nbsp;&nbsp;评论时间：<%=comment.get(i).getAdddate() %></div>	<br/> 
<div><%=comment.get(i).getContent() %></div> 
<br/>
<%	  
  }
  %>
  </fieldset>
  <hr color="blue">
  <!-- 以上为留言部分 -->
  <div style="border: 0px solid blue;width: 500px">
				<form name="comment_1">	
				<input type=hidden name="newsid" id="newsid" value=<%=_articleid%>/>				
					<div style="background: yellow; width: 100%">
						我来评论
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
						<input type="button" value=" 提交 " onclick="validateCodes()">
					</center>
				</form>
			</div>
  </div>
  </body>
</html>
