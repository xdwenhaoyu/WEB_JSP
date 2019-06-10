<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*,bean.article.*" errorPage="" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
 <base href="<%=basePath%>">
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 9.00.8112.16443">
<LINK 
rel=stylesheet type=text/css href="css/hyperlink.css"></LINK>
<LINK rel=stylesheet type=text/css 
      href="css/layout.css"><LINK rel=stylesheet type=text/css 
      href="css/pageView.css">
      <STYLE>.pagecon_layer1_left A {
	LINE-HEIGHT: 29px; DISPLAY: block; FONT-SIZE: 15px; TEXT-DECORATION: none
}
#div1 {
	MARGIN: 3px 0px 0px 30px; HEIGHT: 170px; OVERFLOW: hidden
}
</STYLE>


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
   

    
<DIV class=container>
      <DIV class=pagecon_layer1>
      <DIV class="pagecon_layer1_left shadow">
      <H4><SPAN class=title>热点新闻</SPAN></H4>
      <DIV id=div1>
      <% List<Article> list_22=ArticleDAOImp.select(22,6); 
for(int i=0;i<list_22.size();i++)
{
%>
<a href="<%=list_22.get(i).getArthtmlurl() %>"><%=list_22.get(i).getArtitle() %></a>
<%
}
%>
      
      
      
      
      
      </DIV>
      <SCRIPT type=text/javascript src="js/roll_news.js">
</SCRIPT>
      </DIV>
      <DIV class="pagecon_layer1_rig shadow">
      <SCRIPT type=text/javascript>
    var pic_width = 420; //图片宽度
    var pic_height = 215; //图片高度
    var button_pos = 4; //按扭位置 1左 2右 3上 4下
    var stop_time = 4000; //图片停留时间(1000为1秒钟)
    var show_text = 0; //是否显示文字标签 1显示 0不显示
    var txtcolor = "000000"; //文字色
    var bgcolor = "FFFFFF"; //背景色
    var imag = new Array();
    var link = new Array();
    var text = new Array();
    /*
    imag[1]="http://zi.csdn.net/10news_picture/415-215pt05new.jpg";
    link[1]="http://z.csdn.net/adclick.php?bannerid=459";
    text[1]="CSDN图片广告";
    imag[2]="http://zi.csdn.net/10news_picture/intel415-215.jpg";
    link[2]="http://z.csdn.net/adclick.php?bannerid=395";
    text[2]="CSDN图片广告";
    imag[3]="http://zi.csdn.net/10news_picture/sonicwall415-215.jpg";
    link[3]="http://z.csdn.net/adclick.php?bannerid=401";
    text[3]="CSDN图片广告";
    imag[4]="http://zi.csdn.net/10news_picture/415x215qushi-1.jpg";
    link[4]="http://z.csdn.net/adclick.php?bannerid=372";
    text[4]="CSDN图片广告";
    imag[5]="http://zi.csdn.net/10news_picture/415x215drcs.jpg";
    link[5]="http://z.csdn.net/adclick.php?bannerid=410";
    text[5]="CSDN图片广告";
    imag[6]="http://zi.csdn.net/10news_picture/4152156yue.jpg";
    link[6]="http://z.csdn.net/adclick.php?bannerid=369";
    text[6]="CSDN图片广告";
    */
    //可编辑内容结束
    imag[1] = "http://info-database.csdn.net/Upload/2011-12-27/ibmqian-415-215.jpg";
    link[1] = "http://g.csdn.net/5207388";
    text[1] = "ibm 嵌入式";
    imag[2] = "http://info-database.csdn.net/Upload/2011-12-30/ibmdw415-215.jpg";
    link[2] = "http://g.csdn.net/5207560";
    text[2] = "ibm dw专区";
    imag[3] = "http://info-database.csdn.net/Upload/2011-12-31/zhengding-415-215.jpg";
    link[3] = "http://g.csdn.net/5207465";
    text[3] = "征订";
    imag[4] = "http://images.csdn.net/20111219/415_215.jpg";
    link[4] = "http://g.csdn.net/5206581";
    text[4] = "三星专区";
    imag[5] = "http://info-database.csdn.net/Upload/2011-12-29/intelup-415-215.jpg";
    link[5] = "http://g.csdn.net/5207517";
    text[5] = "intel level up";
    imag[6] = "http://info-database.csdn.net/Upload/2012-01-04/paypal_415_215.jpg";
    link[6] = "http://g.csdn.net/5208192";
    text[6] = "paypal";
    var swf_height = show_text == 1 ? pic_height + 20 : pic_height;
    var pics = "", links = "", texts = "";
    for (var i = 1; i < imag.length; i++) {
        pics = pics + ("|" + imag[i]);
        links = links + ("|" + link[i]);
        texts = texts + ("|" + text[i]);
    }
    pics = pics.substring(1);
    links = links.substring(1);
    texts = texts.substring(1);
    document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cabversion=6,0,0,0" width="' + pic_width + '" height="' + swf_height + '">');
    document.write('<param name="movie" value="http://csdnimg.cn/www/images/focus.swf">');
    document.write('<param name="quality" value="high"><param name="wmode" value="opaque">');
    document.write('<param name="FlashVars" value="pics=' + pics + '&links=' + links + '&texts=' + texts + '&pic_width=' + pic_width + '&pic_height=' + pic_height + '&show_text=' + show_text + '&txtcolor=' + txtcolor + '&bgcolor=' + bgcolor + '&button_pos=' + button_pos + '&stop_time=' + stop_time + '">');
    document.write('<embed wmode="transparent" src="http://csdnimg.cn/www/images/focus.swf" FlashVars="pics=' + pics + '&links=' + links + '&texts=' + texts + '&pic_width=' + pic_width + '&pic_height=' + pic_height + '&show_text=' + show_text + '&txtcolor=' + txtcolor + '&bgcolor=' + bgcolor + '&button_pos=' + button_pos + '&stop_time=' + stop_time + '" quality="high" width="' + pic_width + '" height="' + swf_height + '" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');
    document.write('</object>');
</SCRIPT>
      </DIV></DIV>
  <DIV class="pagecon_layer2_full_ad shadow">
  <EMBED height=90 
      type=application/x-shockwave-flash 
      pluginspage=http://www.macromedia.com/go/getflashplayer width=950 
      src=http://adsfile.qq.com/201202/13/lxjt_QW_201202130837.swf 
      quality="High" wmode="opaque" allowscriptaccess="always" 
      flashvars="adlink=&amp;_did=3032327"> </EMBED>
      </DIV>
 
  <DIV class=pagecon_layer2_top>
    <DIV class="page_09sidebarwrap shadow">
      <H4><SPAN class=title>管理员列表</SPAN></H4>
      <DIV class=conlist>
      <DIV id=MasterContent1_item8_Panel1 align=left>
      <UL>
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        <LI style="LINE-HEIGHT: 22px"><A 
        href="index.jsp">管理员</A> 
        </LI></UL></DIV></DIV>
      <DIV><EMBED height=250 name=flashad type=application/x-shockwave-flash 
      pluginspage=http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash 
      width=136 src=http://adsfile.qq.com/201110/18/w_D_201110185631.swf 
      quality="autohigh" wmode="opaque" swliveconnect="TRUE"> </DIV>
      <H4><SPAN class=title>友情链接</SPAN></H4>
      <DIV style="MARGIN-LEFT: 20px">
      <A href="http://www.csdn.net/">
      <h5>CSDN首页</h5>
      </A><A href="http://www.bccn.net/">
      <h5>编程中国</h5>
      </A><A href="http://www.iteye.com/">
      <h5>Java Eye</h5>
      </A><A href="http://www.52rd.com/">
      <h5>我爱研发网</h5>
      </A><A href="http://msdn.microsoft.com/zh-cn">
      <h5>MSDN中文网</h5>
      </A><A href="http://www.open-open.com/">
      <h5>Java 开源大全</h5>
      </A><A href="http://www.comprg.com.cn/">
      <h5>电脑编程技巧</h5>
      </A></DIV>
    </DIV>
      <DIV class=pageblock2_wrap_top>
      <DIV class=pagecon_layer2_left_top>
      <DIV class="pagecon_layer2_leftcon_top shadow">
      <H4><SPAN class=title>Java</SPAN><SPAN class=more><A 
      href="Item.jsp?id=16">&gt;更多</A></SPAN></H4>
      <DIV class=conlist>
      <DIV id=MasterContent1_item1_Panel1 align=left>
      <ul>
<% List<Article> list_16=ArticleDAOImp.select(16,7); 
for(int i=0;i<list_16.size();i++)
{
%>
<li style="LINE-HEIGHT: 22px"><a href="<%=list_16.get(i).getArthtmlurl() %>"><%=list_16.get(i).getArtitle() %></a></li>
<%
}
%>
</ul>
      </DIV></DIV></DIV>
      <DIV class="pagecon_layer2_leftcon_top shadow ">
      <H4><SPAN class=title>数据库</SPAN><SPAN class=more><A 
      href="Item.jsp?id=18">&gt;更多</A></SPAN></H4>
      <DIV class=conlist>
      <DIV id=MasterContent1_item2_Panel1 align=left>
          <ul>
<% List<Article> list_18=ArticleDAOImp.select(18,7); 
for(int i=0;i<list_18.size();i++)
{
%>
<li style="LINE-HEIGHT: 22px"><a href="<%=list_18.get(i).getArthtmlurl() %>"><%=list_18.get(i).getArtitle() %></a></li>
<%
}
%>
</ul></DIV></DIV></DIV></DIV>
      <DIV class=pagecon_layer2_mid_top>
      <DIV class="pagecon_layer2_midcon_top shadow">
      <H4><SPAN class=title>.Net</SPAN><SPAN class=more><A 
      href="Item.jsp?id=17">&gt;更多</A></SPAN></H4>
      <DIV class=conlist>
      <DIV id=MasterContent1_item3_Panel1 align=left>
         <ul>
<% List<Article> list_17=ArticleDAOImp.select(17,7); 
for(int i=0;i<list_17.size();i++)
{
%>
<li style="LINE-HEIGHT: 22px"><a href="<%=list_17.get(i).getArthtmlurl() %>"><%=list_17.get(i).getArtitle() %></a></li>
<%
}
%>
</ul></DIV></DIV></DIV>
      <DIV class="pagecon_layer2_midcon_top shadow ">
      <H4><SPAN class=title>云计算</SPAN><SPAN class=more><A 
      href="Item.jsp?id=19">&gt;更多</A></SPAN></H4>
      <DIV class=conlist>
      <DIV id=MasterContent1_item4_Panel1 align=left>
          <ul>
<% List<Article> list_19=ArticleDAOImp.select(19,7); 
for(int i=0;i<list_19.size();i++)
{
%>
<li style="LINE-HEIGHT: 22px"><a href="<%=list_19.get(i).getArthtmlurl() %>"><%=list_19.get(i).getArtitle() %></a></li>
<%
}
%>
</ul></DIV></DIV></DIV></DIV>
      <DIV class=pagecon_layer2_full>
      <DIV class="pagecon_layer2_leftcon_full shadow ">
      <DIV id=Mar class=Mar>
      <DIV id=inMar class=inMar>
      <DIV style="FLOAT: left" id=Mar1>
      <TABLE border=0 cellSpacing=0 cellPadding=0>
        <TBODY>
        <TR>
          <TD><IMG src="upfile/ado.net jingdiananli.jpg"></TD>
          <TD><IMG src="upfile/asp.net gaojichengxusheji.jpg"><BR></TD>
          <TD><IMG src="upfile/dahuashejimoshi.jpg"></TD>
          <TD><IMG src="upfile/effective0java.jpg"><BR></TD>
          <TD><IMG src="upfile/java bianchengsixiang.jpg"><BR></TD>
          <TD><IMG src="upfile/javascript.jpg"><BR></TD>
          <TD><IMG src="upfile/jsp.jpg"><BR></TD>
          <TD><IMG src="upfile/qingliangji javaEE.jpg"><BR></TD>
          <TD><IMG src="upfile/qiyejiagousheji.jpg"><BR></TD>
          <TD><IMG src="upfile/shejimoshi.jpg"><BR></TD>
          <TD><IMG src="upfile/shujukushejirumenjingdian.jpg"><BR></TD>
          <TD><IMG 
      src="upfile/shujukushejiyukaifa.jpg"><BR></TD></TR></TBODY></TABLE></DIV>
      <DIV style="FLOAT: left" id=Mar2></DIV></DIV></DIV></DIV></DIV>
      <SCRIPT type=text/javascript src="js/book_ad.js"></SCRIPT>

      <DIV class=pagecon_layer2_full>
      <DIV class="pagecon_layer2_leftcon_bottom  shadow">
      <H4><SPAN class=title>程序员</SPAN><SPAN class=more><A 
      href="Item.jsp?id=20">&gt;更多</A></SPAN></H4>
      <DIV class=conlist>
      <DIV id=MasterContent1_item5_Panel1 align=left>
         <ul>
<% List<Article> list_20=ArticleDAOImp.select(20,7); 
for(int i=0;i<list_20.size();i++)
{
%>
<li style="LINE-HEIGHT: 22px"><a href="<%=list_20.get(i).getArthtmlurl() %>"><%=list_20.get(i).getArtitle() %></a></li>
<%
}
%>
</ul></DIV></DIV></DIV>
      <DIV class="pagecon_layer2_midcon_bottom shadow">
      <H4><SPAN class=title>web开发</SPAN><SPAN class=more><A 
      href="Item.jsp?id=21">&gt;更多</A></SPAN></H4>
      <DIV class=conlist>
      <DIV id=MasterContent1_item6_Panel1 align=left>
        <ul>
<% List<Article> list_21=ArticleDAOImp.select(21,7); 
for(int i=0;i<list_21.size();i++)
{
%>
<li style="LINE-HEIGHT: 22px"><a href="<%=list_21.get(i).getArthtmlurl() %>"><%=list_21.get(i).getArtitle() %></a></li>
<%
}
%>
</ul></DIV></DIV></DIV></DIV></DIV>
      <DIV class="pagecon_layer2_full_longad shadow "><EMBED height=100 
      type=application/x-shockwave-flash 
      pluginspage=http://www.macromedia.com/go/getflashplayer width=950 
      src=http://d5.sina.com.cn/201203/01/395555_sy-h-dt.swf quality="High" 
      wmode="opaque" allowscriptaccess="always" 
      flashvars="adlink=&amp;_did=3032327"> 
</EMBED></DIV></DIV>
   
      <TABLE align="center">
        <TBODY>
        <TR>
          <TD>管理信息系统(MIS)开发实验室<a href="admin/index.htm">admin</a></TD></TR></TBODY></TABLE>
          
          
          </BODY></HTML>