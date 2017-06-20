package com.dsc.service;

import java.util.List;

import com.dsc.DAO.AdminServiceImlDAO;
import com.dsc.domain.Administrator;

public class AdminServiceIml implements AdminService {
	Administrator administrator = null;
	boolean flag = false;
	List<Administrator> list = null;
	AdminServiceImlDAO adminServiceImlDAO;

	public AdminServiceImlDAO getAdminServiceImlDAO() {
		return adminServiceImlDAO;
	}

	public void setAdminServiceImlDAO(AdminServiceImlDAO adminServiceImlDAO) {
		this.adminServiceImlDAO = adminServiceImlDAO;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = adminServiceImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub
		flag = adminServiceImlDAO.delObject(id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = adminServiceImlDAO.updateObject(hql, parameters);
		return flag;
	}

	public List<Administrator> findPage(int pageNow) {
		// TODO Auto-generated method stub

		list = adminServiceImlDAO.findPage(pageNow);
		return list;
	}

	public List<Administrator> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Administrator";
		list = adminServiceImlDAO.find();
		return list;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub

		administrator = (Administrator) adminServiceImlDAO.loadObject(id);

		return administrator;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

}
