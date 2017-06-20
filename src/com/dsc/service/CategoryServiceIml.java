package com.dsc.service;

import java.util.List;

import com.dsc.DAO.CategoryServiceImlDAO;
import com.dsc.domain.Category;

public class CategoryServiceIml implements CategoryService {

	List<Category> list = null;
	Category category = null;
	boolean flag = false;
	CategoryServiceImlDAO categoryServiceImlDAO;

	public void setCategoryServiceImlDAO(
			CategoryServiceImlDAO categoryServiceImlDAO) {
		this.categoryServiceImlDAO = categoryServiceImlDAO;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = categoryServiceImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub
		flag = categoryServiceImlDAO.delObject(id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = categoryServiceImlDAO.updateObject(hql, parameters);
		return flag;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		category = (Category) categoryServiceImlDAO.loadObject(id);

		return category;
	}

	public List<Category> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Category";
		list = categoryServiceImlDAO.findPage(pageNow);
		return list;
	}

	public List<Category> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Category";
		list = categoryServiceImlDAO.find();
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

}
