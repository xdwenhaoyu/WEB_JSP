package TestBeans;

import java.io.Serializable;
import java.util.ArrayList;

public class GoodsBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private static ArrayList<SKU> goodslist = null;

	public ArrayList<SKU> getGoodslist() {
		return goodslist;
	}

	public static void iniList() {
		goodslist = new ArrayList<SKU>();
		goodslist.add(new SKU("001", "Apple", 2.8f)); // 保存商品到goodslist集合对象中
		goodslist.add(new SKU("002", "Banana", 3.1f)); // 保存商品到goodslist集合对象中
		goodslist.add(new SKU("003", "Pear", 2.5f)); // 保存商品到goodslist集合对象中
		goodslist.add(new SKU("004", "Orange", 2.3f)); // 保存商品到goodslist集合对象中
	}
}
