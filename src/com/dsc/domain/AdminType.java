package com.dsc.domain;

import java.io.Serializable;
import java.util.Set;

public class AdminType implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String name;
	private Integer id;
	private Set<Administrator> listAdministartor;

	public Set<Administrator> getListAdministartor() {
		return listAdministartor;
	}

	public void setListAdministartor(Set<Administrator> listAdministartor) {
		this.listAdministartor = listAdministartor;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}
