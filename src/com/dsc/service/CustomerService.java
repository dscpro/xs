package com.dsc.service;

import java.util.List;

import com.dsc.domain.Customer;

public interface CustomerService extends BaseServiceInter {
	public List<Customer> findPage(int pageNow);

	// public Customer loadCustomer(Integer id);
}
