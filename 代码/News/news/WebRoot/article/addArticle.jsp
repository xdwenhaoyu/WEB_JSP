<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*,java.util.*,net.fckeditor.*,bean.column.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>添加新闻</title>
<style type="text/css">
ul
{
list-style:none;}
</style>
<script type="text/javascript" src="../js/addnews.js"></script>
</head>

<body>
<fieldset>
<legend>添加新闻</legend>
<br/>
<form action="addArticleAction" name="frm" method="post">
<table width="880" border="0">
  <tr>
    <td width="85">标题：</td>
    <td><label>
      <input name="title" type="text" id="title" size="40" />
    </label></td>
  </tr>
  <tr>
    <td>栏目名称：</td>
    <td><select name="column" id="column">
			<option value="0">------请选择------</option>
			<%
			String _columnid=request.getParameter("id");
			int columnid=Integer.parseInt(_columnid);
			List<Column> colist=ColumnDAOImp.select();
			for(int i=0;i<colist.size();i++)
			{
				if(colist.get(i).getColumnid()==columnid)
				{
					%>
					<option value="<%=colist.get(i).getColumnid()%>" selected="selected"><%=colist.get(i).getColumntitle()%></option>
					<%	
					continue;
				}
			%>
			<option value="<%=colist.get(i).getColumnid()%>"><%=colist.get(i).getColumntitle()%></option>
			<%}%>
		</select></td>
  </tr>
  <tr>
    <td>作者：</td>
    <td><label>
      <input type="text" name="author" id="author" size="40" />
    </label></td>
  </tr>  
  <tr>
    <td>&nbsp;</td>
    <td>
    <input type="checkbox" name="istop" value="1" />是否置顶&nbsp; <input type="checkbox" name="comment" value="1"/>是否评论
    </td>
  </tr>
   <tr>
    <td>文章内容：</td>
    <td><%
		FCKeditor fckEditor = new FCKeditor(request, "EditorDefault");
        fckEditor.setHeight("400");
        fckEditor.setWidth("790");
		out.println(fckEditor);
		%></td>
  </tr>
  <tr>
    <td colspan="2" align="right">
      <input type="submit" name="Submit" value=" 添加新闻 " onclick="return checknews();" />
    </td>
    </tr>   
</table>
</form>
</fieldset>
</body>
</html>
