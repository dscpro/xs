package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Constant;
import com.dsc.domain.Customer;
import com.dsc.domain.Orders;
import com.dsc.util.HibernateUtil;

public class OrdersServiceImlDAO implements OrdersServiceDAO {

	List<Orders> list = null;
	Orders orders = null;
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
		flag = hibernateUtil.del(Orders.class, id);

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
		orders = (Orders) hibernateUtil.findById(Orders.class, id);

		return orders;
	}

	public List<Orders> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Orders";
		list = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.ORDERS_PAZESIZR, pageNow);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub

		flag = hibernateUtil.update(object);

		return false;
	}

	public List<Orders> findPageByCu(int pageNow, Customer cc) {
		// TODO Auto-generated method stub
		String[] ss = { cc.getId() + "" };
		String hql = "from Orders where CUSTOMER_ID=?";
		// System.out.println(cc.getId());
		list = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.ORDERS_PAZESIZR, pageNow);
		// System.out.println(goodLikes.get(0).getId());
		return list;
	}

	public List<Orders> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Orders";
		list = hibernateUtil.executeQuery(hql, ss);
		return list;
	}
}
