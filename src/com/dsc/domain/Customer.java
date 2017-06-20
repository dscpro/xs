package com.dsc.domain;

import java.util.Date;
import java.util.Set;

public class Customer implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String loginName;
	private String loginPwd;
	private String name;
	private String phone;
	private String address;
	private Date regDate;
	private Date lastDate;
	private Integer loginTimes;
	private String eMail;
	private Memberlevel memberlevel;
	Set<GoodLike> listGoodLike;
	Set<Orders> listOrders;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getLoginPwd() {
		return loginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getLastDate() {
		return lastDate;
	}

	public void setLastDate(Date lastDate) {
		this.lastDate = lastDate;
	}

	public Integer getLoginTimes() {
		return loginTimes;
	}

	public void setLoginTimes(Integer loginTimes) {
		this.loginTimes = loginTimes;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public Memberlevel getMemberlevel() {
		return memberlevel;
	}

	public void setMemberlevel(Memberlevel memberlevel) {
		this.memberlevel = memberlevel;
	}

	public Set<GoodLike> getListGoodLike() {
		return listGoodLike;
	}

	public void setListGoodLike(Set<GoodLike> listGoodLike) {
		this.listGoodLike = listGoodLike;
	}

	public Set<Orders> getListOrders() {
		return listOrders;
	}

	public void setListOrders(Set<Orders> listOrders) {
		this.listOrders = listOrders;
	}

}
