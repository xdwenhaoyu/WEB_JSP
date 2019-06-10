<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.yxq.valuebean.GoodsSingle"%>
<%@ page import="com.yxq.toolbean.MyTools"%>
<jsp:useBean id="myCar" class="com.yxq.toolbean.ShopCar" scope="session" />
<%
	String action = request.getParameter("action");
	if (action == null)
		action = "";
	if (action.equals("buy")) { //购买商品
		ArrayList goodslist = (ArrayList) session.getAttribute("goodslist");
		int id = MyTools.strToint(request.getParameter("id"));
		GoodsSingle single = (GoodsSingle) goodslist.get(id);
		myCar.addItem(single); //调用ShopCar类中的addItem()方法添加商品
		response.sendRedirect("show.jsp");
	} else if (action.equals("remove")) { //移除商品
		String name = request.getParameter("name"); //获取商品名称
		myCar.removeItem(name); //调用ShopCar类中的removeItem()方法移除商品
		response.sendRedirect("shopcar.jsp");
	} else if (action.equals("clear")) { //清空购物车
		myCar.clearCar(); //调用ShopCar类中的clearCar()方法清空购物车
		response.sendRedirect("shopcar.jsp");
	} else {
		response.sendRedirect("show.jsp");
	}
%>
