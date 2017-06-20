package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Constant;
import com.dsc.domain.Ordersstatus;
import com.dsc.util.HibernateUtil;

public class OrdersServiceStatusImlDAO implements OrdersServicesStatusDAO {

	List<Ordersstatus> list = null;
	Ordersstatus ordersstatus = null;
	boolean flag = false;
	HibernateUtil hibernateUtil;

	public void setHibernateUtil(HibernateUtil hibernateUtil) {
		this.hibernateUtil = hibernateUtil;
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
		flag = hibernateUtil.del(Ordersstatus.class, id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = hibernateUtil.executeUpdate(hql, parameters);
		return flag;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		ordersstatus = (Ordersstatus) hibernateUtil.findById(
				Ordersstatus.class, id);

		return ordersstatus;
	}

	public List<Ordersstatus> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Ordersstatus";
		list = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.ORDERS_PAZESIZR, pageNow);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

}
