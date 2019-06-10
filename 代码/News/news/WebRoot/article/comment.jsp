<%@ page language="java" import="bean.message.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String url=request.getHeader("Referer");
//String url=(String)request.getAttribute("javax.servlet.forward.request_uri");
String _id=request.getParameter("id");
String name=request.getParameter("user");
String content=request.getParameter("content");
String ip=request.getRemoteAddr();
String validate=request.getParameter("validate").toLowerCase();
out.println(url);
if(!session.getAttribute("validate").equals(validate))
{
%>
<script type="text/javascript">
alert("验证码错误，请重新输入！");
window.location.href="<%=url%>";
</script>
<%	
}
else
{
boolean status=LeaveMessageDAOImp.insert(name,content,ip);
if(status)
{
%>
<script type="text/javascript">
alert("留言成功！");
//window.location.href="<%=url%>?id=<%=_id%>";
window.location.href="<%=url%>";
</script>
<%	
out.println(url);
}
else
{
%>
<script type="text/javascript">
alert("留言失败！");
</script>
<%	
}
}
%>
</body>
</html>