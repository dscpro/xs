package com.dsc.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

public class Good implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Category category;
	private Integer inventory;
	private Double price;
	private Double sPrice;
	private String picture;
	private String manufacturer;
	private Date leaveFactoryDate;
	private Set<GoodLike> listGoodLike;
	private String informations;
	private String merName;
	private Set<Cart> listCart;

	public Set<Cart> getListCart() {
		return listCart;
	}

	public void setListCart(Set<Cart> listCart) {
		this.listCart = listCart;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Integer getInventory() {
		return inventory;
	}

	public void setInventory(Integer inventory) {
		this.inventory = inventory;
	}

	public String getMerName() {
		return merName;
	}

	public void setMerName(String merName) {
		this.merName = merName;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getsPrice() {
		return sPrice;
	}

	public void setsPrice(Double sPrice) {
		this.sPrice = sPrice;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public Date getLeaveFactoryDate() {
		return leaveFactoryDate;
	}

	public void setLeaveFactoryDate(Date leaveFactoryDate) {
		this.leaveFactoryDate = leaveFactoryDate;
	}

	public String getInformations() {
		return informations;
	}

	public void setInformations(String informations) {
		this.informations = informations;
	}

	public Set<GoodLike> getListGoodLike() {
		return listGoodLike;
	}

	public void setListGoodLike(Set<GoodLike> listGoodLike) {
		this.listGoodLike = listGoodLike;
	}

}
