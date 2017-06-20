package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Constant;
import com.dsc.domain.Customer;
import com.dsc.util.HibernateUtil;

public class CustomerServiceImlDAO implements CustomerServiceDAO {
	Customer customer = null;
	boolean flag = false;
	List<Customer> list = null;
	HibernateUtil hibernateUtil;

	public void setHibernateUtil(HibernateUtil hibernateUtil) {
		this.hibernateUtil = hibernateUtil;
	}

	public Customer Login(String hql, String[] parameters) {
		// TODO Auto-generated method stub

		Customer customer1 = (Customer) hibernateUtil.Login(hql, parameters);
		// System.out.println("CustomerServiceIml:" + customer1.getId());
		return customer1;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = hibernateUtil.save(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub

		// System.out.println(id);
		// java.io.Serializable idd = (java.io.Serializable) id;
		flag = hibernateUtil.del(Customer.class, id);

		return flag;
	}

	public List<Customer> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Customer";
		list = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.CUSTOMER_PAZESIZR, pageNow);
		return list;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub

		customer = (Customer) hibernateUtil.findById(Customer.class, id);

		return customer;
	}

	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub

		flag = hibernateUtil.executeUpdate(hql, parameters);
		return flag;
	}

	public List<Customer> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Customer";
		list = hibernateUtil.executeQuery(hql, ss);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub

		flag = hibernateUtil.update(object);
		return flag;
	}
}
