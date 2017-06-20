package com.dsc.domain;

import java.util.Set;

public class Memberlevel implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Set<Customer> listCustomer;

	public Set<Customer> getListCustomer() {
		return listCustomer;
	}

	public void setListCustomer(Set<Customer> listCustomer) {
		this.listCustomer = listCustomer;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLevelName() {
		return levelName;
	}

	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}

	private String levelName;
}
