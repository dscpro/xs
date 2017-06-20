package com.dsc.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsc.DAO.GoodLikeServiceImlDAO;
import com.dsc.domain.Customer;
import com.dsc.domain.GoodLike;
import com.opensymphony.xwork2.ActionSupport;

public class GoodLikeAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private GoodLike goodLike;
	private List<GoodLike> goodLikelist = null;
	private GoodLikeServiceImlDAO goodLikeServiceIml = null;

	private int pagenow;
	private Customer cc;
	private int id;

	public GoodLikeServiceImlDAO getGoodLikeServiceIml() {
		return goodLikeServiceIml;
	}

	public void setGoodLikeServiceIml(GoodLikeServiceImlDAO goodLikeServiceIml) {
		this.goodLikeServiceIml = goodLikeServiceIml;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String save() {

		// good.setRegDate(new Date());

		if (goodLikeServiceIml.addObject(goodLike))
			return "osucess";
		else
			return "oerror";

	}

	public String del() {

		// System.out.println(good.getId());
		if (goodLikeServiceIml.delObject(id))
			return "osucess";
		else
			return "oerror";

	}

	public String findPageByCu() {

		// System.out.println(pagenow);
		HttpSession session1 = ServletActionContext.getRequest().getSession();
		cc = (Customer) session1.getAttribute("user");
		// System.out.println(cc.getId());
		GoodLikeServiceImlDAO goodLikeServiceIml = new GoodLikeServiceImlDAO();
		// System.out.println(pagenow);
		goodLikelist = goodLikeServiceIml.findPageByCu(1, cc);

		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("goodlikes", goodLikelist);
		// System.out.println("--------"
		// + goodLikelist.get(0).getCustomer().getName());
		if (goodLikelist != null)
			return "findsucess";
		else
			return "finderror";

	}

	public String findPage() {

		// System.out.println(pagenow);
		goodLikelist = goodLikeServiceIml.findPage(pagenow);
		// System.out.println(goodLikelist.get(0).getId());
		if (goodLikelist.size() > 0)
			return "findsucess";
		else
			return "finderror";

	}

	public String updateObject() {

		String[] ss = { goodLike.getId() + "" };
		String hql = "update GoodLike goodLike set goodLike.loginPwd=? where goodLike.id=?";

		// System.out.println(ss[0] + " 234 " + ss[1] + "  234 " + ss[2]
		// + "  234 " + ss[3] + " 234  " + ss[4] + " 234  ");

		if (goodLikeServiceIml.updateObject(hql, ss))
			return "osucess";
		else
			return "oerror";

	}
}
