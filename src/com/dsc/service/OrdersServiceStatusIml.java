package com.dsc.service;

import java.util.List;

import com.dsc.DAO.OrdersServiceStatusImlDAO;
import com.dsc.domain.Ordersstatus;

public class OrdersServiceStatusIml implements OrdersServicesStatus {

	List<Ordersstatus> list = null;
	Ordersstatus ordersstatus = null;
	boolean flag = false;
	OrdersServiceStatusImlDAO ordersServiceStatusImlDAO;

	public void setOrdersServiceStatusImlDAO(
			OrdersServiceStatusImlDAO ordersServiceStatusImlDAO) {
		this.ordersServiceStatusImlDAO = ordersServiceStatusImlDAO;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = ordersServiceStatusImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub
		flag = ordersServiceStatusImlDAO.delObject(id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = ordersServiceStatusImlDAO.updateObject(hql, parameters);
		return flag;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		ordersstatus = (Ordersstatus) ordersServiceStatusImlDAO.loadObject(id);

		return ordersstatus;
	}

	public List<Ordersstatus> findPage(int pageNow) {
		// TODO Auto-generated method stub

		list = ordersServiceStatusImlDAO.findPage(pageNow);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

}
