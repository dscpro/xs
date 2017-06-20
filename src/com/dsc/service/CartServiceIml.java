package com.dsc.service;

import java.util.List;

import com.dsc.DAO.CartServiceImlDAO;
import com.dsc.domain.Cart;

public class CartServiceIml implements CartService {

	List<Cart> list = null;
	Cart cart = null;
	boolean flag = false;
	CartServiceImlDAO cartServiceImlDAO;

	public CartServiceImlDAO getCartServiceImlDAO() {
		return cartServiceImlDAO;
	}

	public void setCartServiceImlDAO(CartServiceImlDAO cartServiceImlDAO) {
		this.cartServiceImlDAO = cartServiceImlDAO;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = cartServiceImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub
		flag = cartServiceImlDAO.delObject(id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = cartServiceImlDAO.updateObject(hql, parameters);
		return flag;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		cart = (Cart) cartServiceImlDAO.loadObject(id);

		return cart;
	}

	public List<Cart> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Cart";
		list = cartServiceImlDAO.findPage(pageNow);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

}
