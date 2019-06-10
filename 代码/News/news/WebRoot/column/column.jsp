<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,bean.column.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>column栏目</title>
<style type="text/css">
a:link{
text-decoration:none;
}
a:hover
{
text-decoration:underline;
}
#content td
{
table-layout:fixed; 
word-break:keep-all;
word-wrap:break-word;
}
#content tbody tr:hover
{
background:#CCFFFF;
}
</style>
<script src="../js/column.js" type="text/javascript"></script>
</head>
<body>
<div>
<fieldset>
<legend>栏目列表</legend>
<table id="content" width="433" border="1" align="center">
<thead>
  <tr bgcolor="#3366CC" style="color: #FFFFFF">
    <td width="64">序号</td>
    <td width="123">栏目名称</td>
    <td width="123">栏目介绍</td>
	<td width="95" nowrap="nowrap">&nbsp;</td>
  </tr>
 </thead>
 <tbody>
  <%
  List<Column> list=ColumnDAOImp.select();
	for(int i=0;i<list.size();i++)
	{ 
%>
<tr>
    <td><%=list.get(i).getColumnid()%></td>
    <td><%=list.get(i).getColumntitle()%></td>
    <td><%=list.get(i).getColumndesc()%></td>
	<td>&nbsp;&nbsp;<a href="deleteColAction?column_id=<%=list.get(i).getColumnid()%>" onclick="return del();" title="删除栏目"><img style="border:none;" src="../images/del.gif"/></a>&nbsp;&nbsp;<img style="border:none; cursor:pointer" src="../images/gx.gif" alt="更新" title="更新栏目" onclick="edit(this);"/></td>
	
  </tr>
<%}
%>

 <%
  String tableName = "`column`";
  int totalResult=Pagination.getPageNum(tableName);
  int pageSize=4;
  int totalPage=(totalResult-1)/pageSize+1;
  String CurrPage=request.getParameter("currPage");
  int curPage=0;
  if(CurrPage==null)
  {
	  curPage=1;
  }
  else
  {
	  try{
	  curPage=Integer.parseInt(CurrPage);
	  }
	  catch(NumberFormatException e)
	  {
		  curPage=1; 
	 }
	  
  }   
  List<Column> Conlist=Pagination.getPage(pageSize,curPage);
	for(int i=0;i<Conlist.size();i++)
	{ 
%>
<tr>
    <td><%=Conlist.get(i).getColumnid()%></td>
    <td><%=Conlist.get(i).getColumntitle()%></td>
    <td><%=Conlist.get(i).getColumndesc()%></td>
    <td>&nbsp;&nbsp;<a href="deleteColAction?column_id=<%=list.get(i).getColumnid()%>" onclick="return del();" title="删除栏目"><img style="border:none;" src="../images/del.gif"/></a>&nbsp;&nbsp;<img style="border:none; cursor:pointer" src="../images/gx.gif" alt="更新" title="更新栏目" onclick="edit(this);"/></td>
  </tr>
<%}
%>
</tbody>
</table>
<br/><br/>
<div style="text-align:center">
<jsp:include   page= "../pageNum/pageNum.jsp">
   <jsp:param   name= "TOTALPAGE"   value= "<%=totalPage %>"/>
   <jsp:param   name= "CURRENTPAGE"   value= "<%=curPage %>"/>
   <jsp:param   name= "URL" value="column.jsp?"/>
</jsp:include> 
</div>
</fieldset>
</div>
</body>
</html>
