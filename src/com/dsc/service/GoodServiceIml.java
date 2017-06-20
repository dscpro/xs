package com.dsc.service;

import java.util.List;

import com.dsc.DAO.GoodServiceImlDAO;
import com.dsc.domain.Good;

public class GoodServiceIml implements GoodService {
	List<Good> list = null;
	Good good = null;
	boolean flag = false;
	GoodServiceImlDAO goodServiceImlDAO;

	public void setGoodServiceImlDAO(GoodServiceImlDAO goodServiceImlDAO) {
		this.goodServiceImlDAO = goodServiceImlDAO;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = goodServiceImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub
		flag = goodServiceImlDAO.delObject(id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = goodServiceImlDAO.updateObject(hql, parameters);
		return flag;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		good = (Good) goodServiceImlDAO.loadObject(id);

		return good;
	}

	public List<Good> findPage(int pageNow) {
		// TODO Auto-generated method stub

		list = goodServiceImlDAO.findPage(pageNow);
		return list;
	}

	public List<Good> find() {
		// TODO Auto-generated method stub
		list = goodServiceImlDAO.find();
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		flag = goodServiceImlDAO.updateObject(object);

		return flag;
	}

}
