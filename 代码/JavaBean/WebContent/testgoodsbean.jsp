<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="TestBeans.*"%>

<jsp:useBean id="goods" class="TestBeans.GoodsBean" scope="application" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测试JavaBean Goods</title>
</head>
<body>
	<h3>商品列表</h3>
	<table border="1">
		<tr>
			<td>编号</td>	
					<td>名称</td>
			<td>单价</td>
		</tr>
		<%
			if (goods.getGoodslist() == null) {
				GoodsBean.iniList();
				System.out.println("goods.iniList");
			}
			ArrayList<SKU> goodslist = goods.getGoodslist();

			for (SKU single : goodslist) {
		%>
		<tr>
			<td><%=single.getSKUID()%></td>
			<td><%=single.getSKUName()%></td>
			<td><%=single.getUnitPrice()%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>