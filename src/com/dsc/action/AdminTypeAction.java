package com.dsc.action;

import java.util.List;

import com.dsc.DAO.AdminTypeServiceImlDAO;
import com.dsc.domain.AdminType;
import com.opensymphony.xwork2.ActionSupport;

public class AdminTypeAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	AdminType adminType;
	List<AdminType> adminTypes;
	AdminTypeServiceImlDAO adminTypeServiceIml;

	public AdminTypeServiceImlDAO getAdminTypeServiceIml() {
		return adminTypeServiceIml;
	}

	public void setAdminTypeServiceIml(AdminTypeServiceImlDAO adminTypeServiceIml) {
		this.adminTypeServiceIml = adminTypeServiceIml;
	}

	int pagenow;

	public String save() {

		// good.setRegDate(new Date());

		if (adminTypeServiceIml.addObject(adminType))
			return "osucess";
		else
			return "oerror";

	}

	public String del() {

		// System.out.println(good.getId());
		if (adminTypeServiceIml.delObject(adminType.getId()))
			return "osucess";
		else
			return "oerror";

	}

	public String findPage() {

		// System.out.println(pagenow);
		adminTypes = adminTypeServiceIml.findPage(pagenow);
		if (adminTypes.size() > 0)
			return "findsucess";
		else
			return "finderror";

	}

	public String updateObject() {

		String[] ss = { adminType.getId() + "" };
		String hql = "update AdminType adminType set adminType.name=? where adminType.id=?";

		if (adminTypeServiceIml.updateObject(hql, ss))
			return "osucess";
		else
			return "oerror";

	}
}
