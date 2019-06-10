<%@ page language="java" import="java.util.*,bean.message.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>留言板</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body>
  <%
  List<LeaveMessage> message=LeaveMessageDAOImp.select();
 %>
<div style="width: 700px;"> 
<fieldset>
<legend>留言簿</legend><br/>
 <%
  for(int i=0;i<message.size();i++)
  {
%>
<div style="border-bottom:1px blue dashed;"></div><br/>
<div>昵称：<%=message.get(i).getNickname() %>&nbsp;&nbsp;&nbsp;&nbsp;留言时间：<%=message.get(i).getAdddate() %></div>	<br/> 
<div><%=message.get(i).getContent() %></div> 
<br/>
<%	  
  }
  %>
  </fieldset>
  </div>
  </body>
</html>
