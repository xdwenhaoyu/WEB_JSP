<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312" import="bean.article.*,java.util.*,bean.comment.*"%>
    <%
		String id=request.getParameter("id");
		int Articleid=Integer.parseInt(id);
		Article article=ArticleDAOImp.findArticleById(Articleid);
		%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String basepath1=basePath+"images/mispuppy.jpg";//logo图片路径
String basepath2=basePath+"css/hyperlink.css";//header css表
//以下7个为菜单链接
String basepath3=basePath+"index.jsp";
String basepath4=basePath+"Item.jsp?id=16";
String basepath5=basePath+"Item.jsp?id=17";
String basepath6=basePath+"Item.jsp?id=18";
String basepath7=basePath+"Item.jsp?id=19";
String basepath8=basePath+"Item.jsp?id=20";
String basepath9=basePath+"Item.jsp?id=21";
//以下为评论功能链接
String basepathcmt=basePath+"article/cmtBoard.jsp?id="+id;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>Insert title here</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
        <LINK 
rel=stylesheet type=text/css href="<%=basepath2%>"></LINK>
        
        
        
		<style type="text/css">
#pre_content {
	width: 90%;
	margin-left: auto;
	padding: 2px;
	border-left: 1px solid green;
	background-color: #FFF;
	margin-top: 5px;
	margin-right: auto;
	text-align: justify;
}
        #content {
	width: 950px;
	margin-right: auto;
	margin-left: auto;
	background-color: #FFF;
	margin-top: 5px;
}
        </style>
	</head>
	<body>
		
        <DIV style="WIDTH: 950px" id=tabsJ class=shadow><IMG 
      style="MARGIN-LEFT: 0px" src="<%=basepath1%>" width=950> 
      <UL>
        <LI id=current><A 
        href="<%=basepath3%>"><SPAN>首页</SPAN></A> 
        <LI><A 
        href="<%=basepath4%>"><SPAN>Java</SPAN></A> 

        <LI><A 
        href="<%=basepath6%>"><SPAN>数据库</SPAN></A> 

        <LI><A 
        href="<%=basepath5%>"><SPAN>.Net</SPAN></A> 

        <LI><A 
        href="<%=basepath7%>"><SPAN>云计算</SPAN></A> 

        <LI><A 
        href="<%=basepath8%>"><SPAN>程序员</SPAN></A> 

        <LI><A 
        href="<%=basepath9%>"><SPAN>web开发</SPAN></A> 

        <LI><A 
        href="<%=basepath3%>"><SPAN>管理员列表</SPAN></A> 

        <LI><A 
        href="<%=basepath3%>"><SPAN>联系我们</SPAN></A> 
        </LI></UL></DIV>
<div id="content">
		<div id="pre_content">
			<div>
				<h3 align="center"><%=article.getArtitle()%></h3>
				作者：<%=article.getArtauthor()%>&nbsp;&nbsp;&nbsp;&nbsp;日期：<%=article.getArtupdateTime() %>&nbsp;&nbsp;&nbsp;&nbsp;查看次数:<%=article.getViewnum() %>
				<hr color="#66CCFF"/>
                <DL>
          <DD>
                <div>
				<%=article.getContent() %>
                </div>
                </DD>
                </DL>
			</div>
			<hr color="#66CCFF"/>
		<a href="<%=basepathcmt%>">我要评论</a>
		</div>
  </div>
        <TABLE align="center">
        <TBODY>
        <TR>
          <TD>管理信息系统(MIS)开发实验室</TD></TR></TBODY></TABLE>
	</body>
</html>