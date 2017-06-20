package com.dsc.service;

import java.util.List;

import com.dsc.DAO.OrdersServiceImlDAO;
import com.dsc.domain.Customer;
import com.dsc.domain.Orders;

public class OrdersServiceIml implements OrdersService {

	List<Orders> list = null;
	Orders orders = null;
	boolean flag = false;
	OrdersServiceImlDAO ordersServiceImlDAO;

	public void setOrdersServiceImlDAO(OrdersServiceImlDAO ordersServiceImlDAO) {
		this.ordersServiceImlDAO = ordersServiceImlDAO;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = ordersServiceImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub
		flag = ordersServiceImlDAO.delObject(id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = ordersServiceImlDAO.updateObject(hql, parameters);
		return flag;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		orders = (Orders) ordersServiceImlDAO.loadObject(id);

		return orders;
	}

	public List<Orders> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Orders";
		list = ordersServiceImlDAO.findPage(pageNow);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub

		flag = ordersServiceImlDAO.updateObject(object);

		return false;
	}

	public List<Orders> findPageByCu(int pageNow, Customer cc) {
		// TODO Auto-generated method stub
		String[] ss = { cc.getId() + "" };
		String hql = "from Orders where CUSTOMER_ID=?";
		// System.out.println(cc.getId());
		list = ordersServiceImlDAO.findPageByCu(pageNow, cc);
		// System.out.println(goodLikes.get(0).getId());
		return list;
	}

	public List<Orders> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Orders";
		list = ordersServiceImlDAO.find();
		return list;
	}
}
