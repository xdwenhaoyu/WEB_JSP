<%@ page language="java" import="java.util.*,bean.article.*" pageEncoding="UTF-8"%>
<%String _columnid=request.getParameter("id");
  int columnid=Integer.parseInt(_columnid);
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML><HEAD><TITLE></TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<LINK 
rel=stylesheet type=text/css href="css/hyperlink.css"></LINK>
<META name=GENERATOR content="MSHTML 9.00.8112.16443">
<LINK rel=stylesheet type=text/css href="css/layout.css"><LINK 
      rel=stylesheet type=text/css href="css/contentList.css">

</HEAD>
<BODY>

      <DIV style="WIDTH: 950px" id=tabsJ class=shadow><IMG 
      style="MARGIN-LEFT: 0px" src="images/mispuppy.jpg" width=950> 
      <UL>
        <LI id=current><A 
        href="index.jsp"><SPAN>首页</SPAN></A> 
        <LI><A 
        href="Item.jsp?id=16"><SPAN>Java</SPAN></A> 

        <LI><A 
        href="Item.jsp?id=18"><SPAN>数据库</SPAN></A> 

        <LI><A 
        href="Item.jsp?id=17"><SPAN>.Net</SPAN></A> 

        <LI><A 
        href="Item.jsp?id=19"><SPAN>云计算</SPAN></A> 

        <LI><A 
        href="Item.jsp?id=20"><SPAN>程序员</SPAN></A> 

        <LI><A 
        href="Item.jsp?id=21"><SPAN>web开发</SPAN></A> 

        <LI><A 
        href="index.jsp"><SPAN>管理员列表</SPAN></A> 

        <LI><A 
        href="index.jsp"><SPAN>联系我们</SPAN></A> 
        </LI></UL></DIV>
      
<DIV class=aspNetHidden> </DIV>
      当前位置：
      <DIV class=conContainer>
      <DIV class=content>
      <DIV class=recom_list>
      <% List<Article> list_1=ArticleDAOImp.select(columnid,7); 
for(int i=0;i<list_1.size();i++)
{
%>
      <DIV style="TEXT-ALIGN: left; WIDTH: 100%" id=MasterContent1_Panel1><BR>
      <DIV class=frame> 
        <h4><A 
      href="<%=list_1.get(i).getArthtmlurl() %>"><%=list_1.get(i).getArtitle() %></A>
      </h4>
          <span
      style=" font-size:12px ; FLOAT: right" class=titltTime><%=list_1.get(i).getArtupdateTime() %></span> 
        
        
        <DIV class="list">
        <P><SPAN 
        style="FONT-SIZE: medium"><%=list_1.get(i).getContent() %></SPAN></P>
        <A 
      href="<%=list_1.get(i).getArthtmlurl() %>">[详情]</A></P></DIV>
      <P><SPAN>作者<%=list_1.get(i).getArtauthor()%>:</SPAN> | <SPAN>关键词:</SPAN></P></DIV></DIV>
      <%
}
%>
      
      <BR>
<DIV 
      align=center></DIV></DIV></DIV></DIV>
      <TABLE align="center">
        <TBODY>
        <TR>
      <TD>管理信息系统(MIS)开发实验室</TD></TR></TBODY></TABLE>
</BODY></HTML>