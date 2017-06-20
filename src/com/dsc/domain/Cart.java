package com.dsc.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

public class Cart implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Good good;
	private Integer numgood;
	private Orders order;
	private ArrayList<Items> goods = new ArrayList<Items>();

	public ArrayList<Items> getGoods() {
		return goods;
	}

	public void setGoods(ArrayList<Items> goods) {
		this.goods = goods;
	}

	public ArrayList<Items> addToCart(Good g, int quantity, String checkway) {

		if (goods == null) {
			// ʵ���ﳵ����
			goods = new ArrayList<Items>();
			// ��ӵ����ﳵ
			Items item = new Items(g, quantity);
			goods.add(item);
		} else {
			if (checkway == null) {
				Object items[] = goods.toArray();
				boolean find = false; // ��ʾ�Ƿ���ҵ�

				for (int i = 0; i < items.length; i++) {
					Items temp = (Items) items[i];
					// �жϹ��ﳵ���Ƿ����Ҫ��ӵ���Ʒ
					if (temp.getGoods().getId() == g.getId()) {
						temp.setNum(temp.getNum() + quantity);
						temp.setSsum((temp.getNum() + 1)
								* temp.getGoods().getPrice());
						find = true;
						break;
					}
				}
				if (!find) {
					// ��ӵ����ﳵ
					Items item = new Items(g, quantity);
					item.setSsum((item.getNum()) * item.getGoods().getPrice());
					goods.add(item);
				}
			} else {

				return goods;
			}
		}
		return goods;
	}

	public void delete(String goodsid) {
		// ת����Iterator����
		Iterator<Items> i = goods.iterator();
		while (i.hasNext()) {
			// �õ�һ��������
			Items temp = (Items) i.next();
			if (temp.getGoods().getId() == (Integer.parseInt(goodsid))) {
				goods.remove(temp);
				break;
			}
		}
	}

	public void addnum(String goodsid) {
		// ת����Iterator����
		Iterator<Items> i = goods.iterator();
		while (i.hasNext()) {
			// �õ�һ��������
			Items temp = (Items) i.next();
			if (temp.getGoods().getId() == (Integer.parseInt(goodsid))) {
				temp.setNum(temp.getNum() + 1);
				temp.setSsum((temp.getNum() + 1) * temp.getGoods().getPrice());
				break;
			}
		}
	}

	public void delnum(String goodsid) {
		// ת����Iterator����
		Iterator<Items> i = goods.iterator();
		while (i.hasNext()) {
			// �õ�һ��������
			Items temp = (Items) i.next();
			if (temp.getGoods().getId() == (Integer.parseInt(goodsid))) {
				if (temp.getNum() == 1) {
					break;
				} else {
					temp.setNum(temp.getNum() - 1);
					temp.setSsum((temp.getNum() - 1)
							* temp.getGoods().getPrice());
					break;
				}
			}
		}
	}

	public void change(String goodsid, String changeQuantity) {
		// ת����Iterator����
		Iterator<Items> i = goods.iterator();
		int changenum = Integer.parseInt(changeQuantity);
		while (i.hasNext()) {
			// �õ�һ��������
			Items temp = (Items) i.next();
			if (temp.getGoods().getId() == (Integer.parseInt(goodsid))) {
				if (changenum == 1) {
					break;
				} else {
					temp.setNum(changenum);
					// System.out.println(changeQuantity);
					temp.setSsum((Integer.parseInt(changeQuantity))
							* temp.getGoods().getPrice());
					break;
				}
			}
		}
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public Integer getNumgood() {
		return numgood;
	}

	public void setNumgood(Integer numgood) {
		this.numgood = numgood;
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
	}
}
