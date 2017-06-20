package com.dsc.service;

import java.util.List;

import com.dsc.DAO.AdminTypeServiceImlDAO;
import com.dsc.domain.AdminType;

public class AdminTypeServiceIml implements AdminTypeService {
	List<AdminType> adminTypes;
	AdminType adminType = null;
	boolean flag = false;
	AdminTypeServiceImlDAO adminTypeServiceImlDAO;

	public AdminTypeServiceImlDAO getAdminTypeServiceImlDAO() {
		return adminTypeServiceImlDAO;
	}

	public void setAdminTypeServiceImlDAO(
			AdminTypeServiceImlDAO adminTypeServiceImlDAO) {
		this.adminTypeServiceImlDAO = adminTypeServiceImlDAO;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = adminTypeServiceImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub
		flag = adminTypeServiceImlDAO.delObject(id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = adminTypeServiceImlDAO.updateObject(hql, parameters);
		return flag;
	}

	public List<AdminType> findPage(int pageNow) {
		// TODO Auto-generated method stub

		adminTypes = adminTypeServiceImlDAO.findPage(pageNow);
		return adminTypes;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		adminType = (AdminType) adminTypeServiceImlDAO.loadObject(id);

		return adminType;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}
}
