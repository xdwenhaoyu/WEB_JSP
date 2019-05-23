<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,bean.article.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻列表</title>
<style type="text/css">
a:link{
text-decoration:none;
}
a:hover
{
text-decoration:underline;
}
#news_content
{
width: 500px;
margin-left: 200px;
padding:2px;
border-left: 1px solid green;
}
#news_content ula
{
list-style-type: none;}
#news_content li{
clear:both;
border-bottom: dashed 1px green; 
}
#news_content span
{
float: right;
}
#content
{
table-layout:fixed;}
#content td
{
word-break:keep-all;
white-space:nowrap;
overflow:hidden;
text-overflow:ellipsis;
text-align: center;

}

</style>
</head>
<body>
<%
String _id=request.getParameter("id");
int id=Integer.parseInt(_id);
final int MAX=1000;
List<Article> Artlist=ArticleDAOImp.select(id,MAX);
%>
<fieldset>
<legend>新闻列表</legend>
<br/><br/>
<table width="737" border="1" id="content">
<tr>
<td width="40" align="center">序号</td>
<td width="90" align="center">标题</td>
<td width="75" align="center">作者</td>
<td width="80" align="center">栏目编号</td>
<td width="80" align="center">是否要闻</td>
<td width="80" align="center">是否置顶</td>
<td width="60" align="center">编辑</td>
<td width="60" align="center">删除</td>
</tr>
<%
for(int i=0;i<Artlist.size();i++)
{
	%>
<tr>
<td><%=Artlist.get(i).getArticleid() %></td>
<td><a href="PreArticle.jsp?id=<%=Artlist.get(i).getArticleid()%>"><%=Artlist.get(i).getArtitle() %></a></td>
<td><%=Artlist.get(i).getArtauthor() %></td>
<td><%=Artlist.get(i).getColumnid()%></td>
<td><%=Artlist.get(i).getArtistop() %></td>
<td><%=Artlist.get(i).getArtiscomment() %></td>
<td><a href="editNews.jsp?id=<%=Artlist.get(i).getArticleid()%>"><img style="border:0" src="../images/gx.gif" title="编辑"/></a></td>
<td><a href="deleteArticle?id=<%=Artlist.get(i).getArticleid()%>" onclick="return confirm('确定要删除吗？')"><img style="border:0" src="../images/del.gif" title="删除"/></a></td>
</tr>
<%
}
%>
</table>
</fieldset>
</body>
</html>