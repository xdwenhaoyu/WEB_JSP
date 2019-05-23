<%@ page language="java" contentType="text/html; charset=gb2312" import="bean.column.*,java.util.*"
    pageEncoding="gb2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<META http-equiv="content-type" content="text/html; charset=gb2312">
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
<SCRIPT language="javascript">
	function expand(el)
	{
		childObj = document.getElementById("child" + el);

		if (childObj.style.display == 'none')
		{
			childObj.style.display = 'block';
		}
		else
		{
			childObj.style.display = 'none';
		}
		return;
	}
</SCRIPT>
</head>
<body>
<TABLE height="100%" cellspacing="0" cellPadding="0" width="170" 
background="images/menu_bg.jpg" border="0">
  <TR>
    <TD valign="top" align="center">
      <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
        <TR>
          <TD height="10"></TD>
        </TR>
      </TABLE>
      <TABLE cellSpacing="0" cellPadding="0" width="150" border="0">
        <TR height="22">
          <TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg"><A 
			class="menuParent" onclick="expand(1)" 
			href="javascript:void(0);">栏目管理</A></TD>
        </TR>
        <TR height="4">
          <TD></TD>
        </TR>
      </TABLE>
      <TABLE id="child1" style="DISPLAY: none" cellSpacing="0" cellPadding="0" 
	  width="150" border="0">
        <TR height="20">
          <TD align="middle" width="30"><IMG height="9" 
			src="images/menu_icon.gif" width="9"></TD>
          <TD><A class="menuChild" 
			href="../column/addColumn.jsp" 
			target="main">添加栏目</A></TD>
        </TR>
        <TR height="20">
          <TD align="middle" width="30"><IMG height="9" 
			src="images/menu_icon.gif" width="9"></TD>
          <TD><A class="menuChild" 
			href="../column/column.jsp" 
			target="main">编辑栏目</A></TD>
        </TR>        
        <TR height="4">
          <TD colspan="2"></TD>
        </TR>
      </TABLE>
      <TABLE cellspacing="0" cellpadding="0" width="150" border="0">
        <TR height="22">
          <TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg"><A 
			class="menuParent" onclick="expand(2)" 
			href="javascript:void(0);">新闻管理</A></TD>
        </TR>
        <TR height="4">
          <TD></TD>
        </TR>
      </TABLE>
	<TABLE id="child2" style="DISPLAY: none" cellspacing="0" cellpadding="0" 
	  width="150" border="0">
	   <%
      List<Column> colist=ColumnDAOImp.select();
      for(int i=0;i<colist.size();i++)
      {
      %>
        <TR height="20">
          <TD align="center" width="30"><IMG height="9" 
			src="images/menu_icon.gif" width="9"></TD>
          <TD><A class="menuChild" 
			href="../article/articleList.jsp?id=<%=colist.get(i).getColumnid() %>" 
			target="main"><%=colist.get(i).getColumntitle() %></A>  | <a href="../article/addArticle.jsp?id=<%=colist.get(i).getColumnid() %>" target="main">添加</a></TD>
        </TR>
    <%
      }
    %>
      </TABLE>
      
      <TABLE cellspacing="0" cellpadding="0" width="150" border="0">
        <TR height="22">
          <TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg"><A 
			class="menuParent" onclick="expand(6)" 
			href="javascript:void(0);">高级管理</A></TD>
        </TR>
        <TR height="4">
          <TD></TD>
        </TR>
      </TABLE>
      <TABLE id="child6" style="DISPLAY: none" cellspacing="0" cellpadding="0" 
	  width="150" border="0">
        <TR height="20">
          <TD align="middle" width="30"><IMG height="9" 
			src="images/menu_icon.gif" width="9"></TD>
          <TD><A class="menuChild" 
			href="calendar.htm" 
			target="main">返回首页</A></TD>
        </TR>
        <TR height="20">
          <TD align="middle" width="30"><IMG height="9" 
			src="images/menu_icon.gif" width="9"></TD>
          <TD><A class="menuChild" 
			href="http://www.cnzz.com/" 
			target="main">访问统计</A></TD>
        </TR>
         <TR height="20">
          <TD align="middle" width="30"><IMG height="9" 
			src="images/menu_icon.gif" width="9"></TD>
          <TD><A class="menuChild" 
			href="../article/leavemessage.jsp" 
			target="main">留言簿</A></TD>
        </TR>
      </TABLE>
      <TABLE cellspacing="0" cellpadding="0" width="150" border="0">
        <TR height="22">
          <TD style="PADDING-LEFT: 30px" background="images/menu_bt.jpg"><A 
			class="menuParent" onclick="expand(0)" 
			href="javascript:void(0);">个人管理</A></TD>
        </TR>
        <TR height="4">
          <TD></TD>
        </TR>
      </TABLE>
      <TABLE id="child0" style="DISPLAY: none" cellspacing="0" cellpadding="0" 
	  width="150" border="0">
        <TR height="20">
          <TD align="middle" width="30"><IMG height="9" 
			src="images/menu_icon.gif" width="9"></TD>
          <TD><A class="menuChild" 
			href="login.htm" 
			target="main">修改口令</A></TD>
        </TR>
        <TR height="20">
          <TD align="middle" width="30"><IMG height="9" 
			src="images/menu_icon.gif" width="9"></TD>
          <TD><A class="menuChild" 
			onclick="return confirm('确定要退出吗？') " 
			href="login.htm" 
			target="main">退出系统</A></TD>
        </TR>
      </TABLE>
      </TD>
    <TD width="1" bgcolor="#d1e6f7"></TD>
  </TR>
</TABLE>

</body>
</html>