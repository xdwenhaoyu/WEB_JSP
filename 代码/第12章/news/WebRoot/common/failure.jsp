<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'success.jsp' starting page</title>
  </head>
  <body>
  <%
  String url=request.getHeader("Referer");
  %>
 <script type="text/javascript">
 alert("执行失败！");
 window.location.href="<%=url%>";
 </script>
  </body>
</html>
