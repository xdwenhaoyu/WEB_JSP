<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,bean.column.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
#content tr:hover
{
background:#00FFCC;
}
</style>
<script src="../js/column.js" type="text/javascript"></script>
</head>
<body>
<div style="width:600px; margin:0 auto; border:#00CCCC 1px solid; height:120px;">
<br />
<form action="addColumn.jsp" method="post">
<table border="0" align="center">
  <caption>
    添加栏目
  </caption>
  <tr>
    <td>栏目名称：</td>
    <td><label>
      <input type="text" name="column_name" />
    </label></td>
  </tr>
  <tr>
    <td>栏目介绍：</td>
    <td><label>
      <input type="text" name="column_desc" />
    </label></td>
  </tr>
  <tr>
   <td>&nbsp;&nbsp;&nbsp;&nbsp;
   <label>
      <input type="reset" name="Submit" value="重填" />
    </label>
   </td>
    <td>&nbsp;&nbsp;<label>
      <input type="submit" name="Submit" value=" 添加 " onclick="return checkfrm();" />
    </label></td>
    </tr>
</table>
</form>
</div>
<table id="content" width="403" border="1" align="center">
  <tr bgcolor="#0099FF">
    <td width="64">序号</td>
    <td width="123">栏目名称</td>
    <td width="123">栏目介绍</td>
    <td width="100" nowrap="nowrap">&nbsp;</td>
  </tr>
  <%
  int totalResult=Pagination.getPageNum("`column`");
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
  List<Column> list=Pagination.getPage(pageSize,curPage);
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
</table>
<br/><br/>
<div style="text-align:center">
<%
int i=0;
if(totalPage>1){
	if(curPage>1)
	{%>
	<a style="text-decoration:none;" href="page.jsp?currPage=<%=curPage-1%>">[上页]</a>
	<%		
	}
	for(i=1;i<=totalPage;i++)
	{	
		if(curPage==i)
		{
			out.println(i);
		}
		else
		{%>
				
		<a style="text-decoration:none;" href="page.jsp?currPage=<%=i%>">[<%=i%>]</a>		
		<%
		}
	}		
	if(curPage<totalPage)
	{
		%>
		<a style="text-decoration:none;" href="page.jsp?currPage=<%=curPage+1%>">[下页]</a>
		<%
	}
	%>
	&nbsp;&nbsp;&nbsp;&nbsp;第<%=curPage%>/<%=totalPage %>页
	<%
}
%>
</div>
</body>
</html>