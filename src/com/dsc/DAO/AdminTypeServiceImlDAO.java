package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.AdminType;
import com.dsc.domain.Constant;
import com.dsc.util.HibernateUtil;

public class AdminTypeServiceImlDAO implements AdminTypeServiceDAO {
	List<AdminType> adminTypes;
	AdminType adminType = null;
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
		flag = hibernateUtil.del(AdminType.class, id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = hibernateUtil.executeUpdate(hql, parameters);
		return flag;
	}

	public List<AdminType> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from AdminType";
		adminTypes = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.ADMINISTRSTOR_PAZESIZR, pageNow);
		return adminTypes;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		adminType = (AdminType) hibernateUtil.findById(AdminType.class, id);

		return adminType;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}
}
