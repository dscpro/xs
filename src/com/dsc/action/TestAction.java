package com.dsc.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsc.DAO.GoodServiceImlDAO;
import com.dsc.domain.Good;
import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static GoodServiceImlDAO goodServiceIml;
	private List<Good> goodlist;

	public void setGoodServiceIml(GoodServiceImlDAO goodServiceIml) {
		this.goodServiceIml = goodServiceIml;
	}

	public String find() {

		// System.out.println("************" + pagenow);
		goodlist = goodServiceIml.findPage(1);

		// HttpServletRequest request = ServletActionContext.getRequest();
		// request.setAttribute("goodlistload", goodlist);
		HttpSession request = ServletActionContext.getRequest().getSession();
		request.setAttribute("goodlistload", goodlist);
		// System.out.println(goodlist.size());
		if (goodlist.size() > 0)
			return "loginsucess";
		else
			return "finderror";

	}
}
