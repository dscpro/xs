package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Category;
import com.dsc.domain.Constant;
import com.dsc.util.HibernateUtil;

public class CategoryServiceImlDAO implements CategoryServiceDAO {

	List<Category> list = null;
	Category category = null;
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
		flag = hibernateUtil.del(Category.class, id);

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
		category = (Category) hibernateUtil.findById(Category.class, id);

		return category;
	}

	public List<Category> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Category";
		list = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.CATEGORY_PAZESIZR, pageNow);
		return list;
	}

	public List<Category> find() {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from Category";
		list = hibernateUtil.executeQuery(hql, ss);
		return list;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

}
