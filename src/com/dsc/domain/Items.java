package com.dsc.domain;

import java.io.Serializable;

public class Items implements Serializable {
	private Good goods;
	private int num;
	private double ssum;

	public double getSsum() {
		return ssum;
	}

	public void setSsum(double ssum) {
		this.ssum = ssum;
	}

	public Items(Good d, int num) {
		this.goods = d;
		this.num = num;

	}

	public Items(Good d, int num, double ssum) {
		this.goods = d;
		this.num = num;
		this.ssum = ssum;
	}

	public void setGoods(Good goods) {
		this.goods = goods;
	}

	public Good getGoods() {
		return goods;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getNum() {
		return num;
	}

}
