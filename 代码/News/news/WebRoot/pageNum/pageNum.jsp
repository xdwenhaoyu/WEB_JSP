<%@ page language="java" import="java.util.*,bean.column.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head> 
  <body>
    <%  
    String url = request.getParameter("URL");
    int totalPage = Integer.parseInt(request.getParameter("TOTALPAGE"));
    int i=0;
    int curPage=Integer.parseInt(request.getParameter("CURRENTPAGE"));
    if(totalPage>1){
    	if(curPage>1)
    	{%>
    	<a style="text-decoration:none;" href="<%=url %>currPage=<%=curPage-1%>">[上页]</a>
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
    				
    		<a style="text-decoration:none;" href="<%=url %>currPage=<%=i%>">[<%=i%>]</a>		
    		<%
    		}
    	}		
    	if(curPage<totalPage)
    	{
    		%>
    		<a style="text-decoration:none;" href="<%=url %>currPage=<%=curPage+1%>">[下页]</a>
    		<%
    	}
    	%>
    	&nbsp;&nbsp;&nbsp;&nbsp;第<%=curPage%>/<%=totalPage %>页
    	<%
    }
    %>

  </body>
</html>
