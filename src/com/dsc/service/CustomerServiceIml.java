package com.dsc.service;

import java.util.List;

import com.dsc.DAO.CustomerServiceImlDAO;
import com.dsc.domain.Customer;

public class CustomerServiceIml implements CustomerService {
	Customer customer = null;
	boolean flag = false;
	List<Customer> list = null;
	CustomerServiceImlDAO customerServiceImlDAO;

	public CustomerServiceImlDAO getCustomerServiceImlDAO() {
		return customerServiceImlDAO;
	}

	public void setCustomerServiceImlDAO(
			CustomerServiceImlDAO customerServiceImlDAO) {
		this.customerServiceImlDAO = customerServiceImlDAO;
	}

	public Customer Login(String hql, String[] parameters) {
		// TODO Auto-generated method stub

		Customer customer1 = (Customer) customerServiceImlDAO.Login(hql,
				parameters);
		// System.out.println("CustomerServiceIml:" + customer1.getId());
		return customer1;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = customerServiceImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub

		// System.out.println(id);
		// java.io.Serializable idd = (java.io.Serializable) id;
		flag = customerServiceImlDAO.delObject(id);

		return flag;
	}

	public List<Customer> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Customer";
		list = customerServiceImlDAO.findPage(pageNow);
		return list;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub

		customer = (Customer) customerServiceImlDAO.loadObject(id);

		return customer;
	}

	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub

		flag = customerServiceImlDAO.updateObject(hql, parameters);
		return flag;
	}

	public List<Customer> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Customer";
		list = customerServiceImlDAO.find();
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub

		flag = customerServiceImlDAO.updateObject(object);
		return flag;
	}
}
