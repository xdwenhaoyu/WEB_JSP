<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <LINK href="css/admin.css" type="text/css" rel="stylesheet">
    <title>Login页面</title>
  </head>
  
  <body>
   <TABLE cellSpacing=0 cellPadding=0 width="100%" 
background="images/header_bg.jpg" border=0>
  <TR height=56>
    <TD width=260><IMG height=56 src="images/header_left.jpg" 
    width=260></TD>
    <TD style="FONT-WEIGHT: bold;  PADDING-TOP: 20px" 
      align=middle><span style="COLOR: #fff">当前用户 <%=session.getAttribute("username") %></span>&nbsp;&nbsp;<A style="COLOR: #fff" 
      href="login.htm" target="main">修改口令</A> &nbsp;&nbsp; <A style="COLOR: #fff" 
      onclick="return confirm('确定要退出吗？');" 
      href="logout" target="main">退出系统</A> </TD>
    <TD align=right width=268><IMG height=56 
      src="images/header_right.jpg" width=268></TD>
  </TR>
</TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TR bgColor=#1c5db6 height=4>
    <TD></TD>
  </TR>
</TABLE>
  </body>
</html>
