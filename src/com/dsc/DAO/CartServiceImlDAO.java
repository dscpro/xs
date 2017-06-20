package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Cart;
import com.dsc.domain.Constant;
import com.dsc.util.HibernateUtil;

public class CartServiceImlDAO implements CartServiceDAO {

	List<Cart> list = null;
	Cart cart = null;
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
		flag = hibernateUtil.del(Cart.class, id);

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
		cart = (Cart) hibernateUtil.findById(Cart.class, id);

		return cart;
	}

	public List<Cart> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Cart";
		list = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.CART_PAZESIZR, pageNow);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

}
