package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Customer;

public interface CustomerServiceDAO extends BaseServiceInterDAO {
	public List<Customer> findPage(int pageNow);

	// public Customer loadCustomer(Integer id);
}
