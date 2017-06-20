package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Administrator;
import com.dsc.domain.Constant;
import com.dsc.util.HibernateUtil;

public class AdminServiceImlDAO implements AdminServiceDAO {
	Administrator administrator = null;
	boolean flag = false;
	List<Administrator> list = null;
	HibernateUtil hibernateUtil;

	public void setHibernateUtil(HibernateUtil hibernateUtil) {
		this.hibernateUtil = hibernateUtil;
	}

	public Administrator Login(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		administrator = (Administrator) hibernateUtil.Login(hql, parameters);
		return administrator;
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
		flag = hibernateUtil.del(Administrator.class, id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = hibernateUtil.executeUpdate(hql, parameters);
		return flag;
	}

	public List<Administrator> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Administrator";
		list = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.ADMINISTRSTOR_PAZESIZR, pageNow);
		return list;
	}

	public List<Administrator> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Administrator";
		list = hibernateUtil.executeQuery(hql, ss);
		return list;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub

		administrator = (Administrator) hibernateUtil.findById(
				Administrator.class, id);

		return administrator;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

}
