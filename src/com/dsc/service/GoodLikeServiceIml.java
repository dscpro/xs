package com.dsc.service;

import java.util.List;

import com.dsc.DAO.GoodLikeServiceImlDAO;
import com.dsc.domain.Customer;
import com.dsc.domain.GoodLike;

public class GoodLikeServiceIml implements GoodLikeService {
	List<GoodLike> goodLikes;
	GoodLike goodLike = null;
	boolean flag = false;
	GoodLikeServiceImlDAO goodLikeServiceImlDAO;

	public GoodLikeServiceImlDAO getGoodLikeServiceImlDAO() {
		return goodLikeServiceImlDAO;
	}

	public void setGoodLikeServiceImlDAO(
			GoodLikeServiceImlDAO goodLikeServiceImlDAO) {
		this.goodLikeServiceImlDAO = goodLikeServiceImlDAO;
	}

	@Override
	public boolean addObject(Object object) {
		// TODO Auto-generated method stub
		flag = goodLikeServiceImlDAO.addObject(object);
		return flag;
	}

	@Override
	public boolean delObject(Integer id) {
		// TODO Auto-generated method stub
		flag = goodLikeServiceImlDAO.delObject(id);

		return flag;
	}

	@Override
	public boolean updateObject(String hql, String[] parameters) {
		// TODO Auto-generated method stub
		flag = goodLikeServiceImlDAO.updateObject(hql, parameters);
		return flag;
	}

	public List<GoodLike> findPage(int pageNow) {
		// TODO Auto-generated method stub

		goodLikes = goodLikeServiceImlDAO.findPage(pageNow);
		// System.out.println(goodLikes.get(0).getId());
		return goodLikes;
	}

	@Override
	public Object loadObject(Integer id) {
		// TODO Auto-generated method stub
		goodLike = (GoodLike) goodLikeServiceImlDAO.loadObject(id);
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

		// System.out.println(cc.getId());
		goodLikes = goodLikeServiceImlDAO.findPageByCu(pageNow, cc);
		// System.out.println(goodLikes.get(0).getId());
		return goodLikes;
	}

}
