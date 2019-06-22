package TestBeans;

import java.util.ArrayList;

public class TestGoodsBean {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GoodsBean g = new GoodsBean();
		GoodsBean.iniList();
		
		ArrayList<SKU> goodslist = g.getGoodslist();
		
		for (SKU single : goodslist) {
			System.out.println(single.getSKUName());
		}
	}

}
