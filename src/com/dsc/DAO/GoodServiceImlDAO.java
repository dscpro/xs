package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Constant;
import com.dsc.domain.Good;
import com.dsc.util.HibernateUtil;

public class GoodServiceImlDAO implements GoodServiceDAO {
	List<Good> list = null;
	Good good = null;
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
		flag = hibernateUtil.del(Good.class, id);

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
		good = (Good) hibernateUtil.findById(Good.class, id);

		return good;
	}

	public List<Good> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Good";
		list = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.GOOD_PAZESIZR, pageNow);
		return list;
	}

	public List<Good> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Good";
		list = hibernateUtil.executeQuery(hql, ss);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		flag = hibernateUtil.update(object);

		return flag;
	}

}
