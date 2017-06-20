package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Constant;
import com.dsc.domain.Customer;
import com.dsc.domain.GoodLike;
import com.dsc.util.HibernateUtil;

public class GoodLikeServiceImlDAO implements GoodLikeServiceDAO {
	List<GoodLike> goodLikes;
	GoodLike goodLike = null;
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
		flag = hibernateUtil.del(GoodLike.class, id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = hibernateUtil.executeUpdate(hql, parameters);
		return flag;
	}

	public List<GoodLike> findPage(int pageNow) {
		// TODO Auto-generated method stub
		String[] ss = {};
		String hql = "from GoodLike";
		goodLikes = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.GOODLIKE_PAZESIZR, pageNow);
		// System.out.println(goodLikes.get(0).getId());
		return goodLikes;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		goodLike = (GoodLike) hibernateUtil.findById(GoodLike.class, id);

		return goodLike;
	}

	@Override
	public boolean updateObject(Object object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<GoodLike> findPageByCu(int pageNow, Customer cc) {
		// TODO Auto-generated method stub
		String[] ss = { cc.getId() + "" };
		String hql = "from GoodLike where CU_ID=?";
		// System.out.println(cc.getId());
		goodLikes = hibernateUtil.executeQueryByPage(hql, ss,
				Constant.GOODLIKE_PAZESIZR, pageNow);
		// System.out.println(goodLikes.get(0).getId());
		return goodLikes;
	}

}
