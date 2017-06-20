package com.dsc.domain;

import java.io.Serializable;
import java.util.Set;

public class Category implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String cateName;
	private Set<Good> listgood;

	public Set<Good> getListgood() {
		return listgood;
	}

	public void setListgood(Set<Good> listgood) {
		this.listgood = listgood;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
}
