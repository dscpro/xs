package com.dsc.DAO;

public interface BaseServiceInterDAO {

	// public Object Login(String hql, String[] parameters);//

	public Object loadObject(Integer id);//

	public boolean delObject(Integer id);//

	public boolean addObject(Object object);//

	public boolean updateObject(String hql, String[] parameters);//

	public boolean updateObject(Object object);//

	// public List<Object> findPage(int pageNow);//

	// public int getCount();//

}
