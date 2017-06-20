package com.dsc.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

public class Orders implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Customer customer;
	private String buyer;
	private String address;
	private double money;
	private Date orderDate;
	private Set<Cart> cart;
	private Ordersstatus ordersstatus;

	public Set<Cart> getCart() {
		return cart;
	}

	public void setCart(Set<Cart> cart) {
		this.cart = cart;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Ordersstatus getOrdersstatus() {
		return ordersstatus;
	}

	public void setOrdersstatus(Ordersstatus ordersstatus) {
		this.ordersstatus = ordersstatus;
	}

}
