package com.yxq.toolbean;

import java.util.ArrayList;
import com.yxq.valuebean.GoodsSingle;

public class ShopCar {
	private ArrayList<GoodsSingle> buylist = new ArrayList<GoodsSingle>(); // 用来存储购买的商品

	public ArrayList<GoodsSingle> getBuylist() {
		return buylist;
	}

	/**
	 * @功能 向购物车中添加商品
	 * @参数 single为GoodsSingle类对象，封装了要添加的商品信息
	 */
	public void addItem(GoodsSingle single) {
		if (single != null) {
			if (buylist.size() == 0) { // 如果buylist中不存在任何商品
				GoodsSingle temp = new GoodsSingle();
				temp.setName(single.getName());
				temp.setPrice(single.getPrice());
				temp.setNum(single.getNum());
				buylist.add(temp); // 存储商品
			} else { // 如果buylist中存在商品
				int i = 0;
				for (; i < buylist.size(); i++) { // 遍历buylist集合对象，判断该集合中是否已经存在当前要添加的商品
					GoodsSingle temp = (GoodsSingle) buylist.get(i); // 获取buylist集合中当前元素
					if (temp.getName().equals(single.getName())) { // 判断从buylist集合中获取的当前商品的名称是否与要添加的商品的名称相同
						// 如果相同，说明已经购买了该商品，只需要将商品的购买数量加1
						temp.setNum(temp.getNum() + 1); // 将商品购买数量加1
						break; // 结束for循环
					}
				}
				if (i >= buylist.size()) { // 说明buylist中不存在要添加的商品
					GoodsSingle temp = new GoodsSingle();
					temp.setName(single.getName());
					temp.setPrice(single.getPrice());
					temp.setNum(single.getNum());
					buylist.add(temp); // 存储商品
				}
			}
		}
	}

	/**
	 * @功能 从购物车中移除指定名称的商品
	 * @参数 name表示商品名称
	 */
	public void removeItem(String name) {
		for (int i = 0; i < buylist.size(); i++) { // 遍历buylist集合，查找指定名称的商品
			GoodsSingle temp = (GoodsSingle) buylist.get(i); // 获取集合中当前位置商品
			// 如果商品的名称为name参数指定的名称
			if (temp.getName().equals(MyTools.toChinese(name))) {
				if (temp.getNum() > 1) { // 如果商品的购买数量大于1
					temp.setNum(temp.getNum() - 1); // 则将购买数量减1
					break; // 结束for循环
				} else if (temp.getNum() == 1) { // 如果商品的购买数量为1
					buylist.remove(i); // 从buylist集合对象中移除该商品
				}
			}
		}
	}

	/**
	 * @功能 清空购物车
	 */
	public void clearCar() {
		buylist.clear(); // 清空buylist集合对象
	}

}
