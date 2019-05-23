<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="bean.article.*,bean.column.*,net.fckeditor.*,java.util.*;" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>编辑新闻</title>
		<script type="text/javascript">
		function save()
		{	
			var frm=document.getElementById("myform");
			frm.action="editArticle";			
			frm.submit();
			}
		function pre()
		{	
			var frm=document.getElementById("myform");
			//frm.action="PreArticle.jsp";
			frm.action="articleDetail.jsp";			
			frm.submit();
			}
		</script>
	</head>
	<body>
		<%
			String _id = request.getParameter("id");
			int id = Integer.parseInt(_id);
			Article article = ArticleDAOImp.findArticleById(id);
			String content=article.getContent();
		%>
		<form id="myform" action="makeArticle" name="fm" method="post">
		<input type="hidden" name="id" value="<%=id%>">
<table width="880" border="0">
  <tr>
    <td width="85">标题：</td>
    <td><label>
      <input name="title" type="text" id="title" size="40" value="<%=article.getArtitle() %>" />
    </label></td>
  </tr>
  <tr>
    <td>栏目名称：</td>
    <td><select name="column" id="column">
			<option value="0">------请选择------</option>
			<%
			int columnid=article.getColumnid();
			List<Column> columnlist=ColumnDAOImp.select();
			for(int i=0;i<columnlist.size();i++)
			{
				if(columnlist.get(i).getColumnid()==columnid)
				{
					%>
					<option value="<%=columnlist.get(i).getColumnid()%>" selected="selected"><%=columnlist.get(i).getColumntitle()%></option>
					<%	
					continue;
				}
			%>
			<option value="<%=columnlist.get(i).getColumnid()%>"><%=columnlist.get(i).getColumntitle()%></option>
			<%}%>
		</select></td>
  </tr>
  <tr>
    <td>作者：</td>
    <td><label>
      <input type="text" name="author" id="author" size="40" value="<%=article.getArtauthor()%>"/>
    </label></td>
  </tr>  
  <tr>
    <td>&nbsp;</td>
    <td>
    <%if("是".equals(article.getArtistop()))
    {
    	%>
    	<input type="checkbox" name="istop" value="1" checked="checked" />是否置顶&nbsp;
    	<%
    }
    else
    {%>
    	<input type="checkbox" name="istop" value="1"/>是否置顶&nbsp;	
    <% 
    }
    if("是".equals(article.getArtiscomment()))
    {
    	%>
    	<input type="checkbox" name="comment" value="1" checked="checked"/>是否评论
    	<% 
    }
    else
    {
    %>
    <input type="checkbox" name="comment" value="1"/>是否评论
    <%	
    }
    %>
    </td>
  </tr>
   <tr>
    <td>文章内容：</td>
    <td><%
		FCKeditor fckEditor = new FCKeditor(request, "EditorDefault");
   		fckEditor.setHeight("400");
        fckEditor.setWidth("790");
    	fckEditor.setValue(content);
		out.println(fckEditor);			
		%>		
		</td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="button"  value=" 保存 " onclick="save()" />
      <input type="button"  value=" 预览 " onclick="pre()" />
      <input type="submit" name="Submit" value=" 发表 " />
    </td>
    </tr>   
</table>
</form>
	</body>
</html>