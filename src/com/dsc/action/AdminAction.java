package com.dsc.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsc.DAO.AdminServiceImlDAO;
import com.dsc.DAO.AdminTypeServiceImlDAO;
import com.dsc.domain.AdminType;
import com.dsc.domain.Administrator;
import com.dsc.domain.Constant;
import com.dsc.util.MD5;
import com.dsc.util.MyTools;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Administrator administrator;
	private AdminServiceImlDAO adminServiceIml = null;
	private List<Administrator> administratorlist = null;
	private int pagenow;
	private Integer adminType;
	private AdminTypeServiceImlDAO adminTypeServiceIml;

	public AdminTypeServiceImlDAO getAdminTypeServiceIml() {
		return adminTypeServiceIml;
	}

	public void setAdminTypeServiceIml(AdminTypeServiceImlDAO adminTypeServiceIml) {
		this.adminTypeServiceIml = adminTypeServiceIml;
	}

	public Integer getAdminType() {
		return adminType;
	}

	public void setAdminType(Integer adminType) {
		this.adminType = adminType;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	int id;

	public Administrator getAdministrator() {
		return administrator;
	}

	public void setAdministrator(Administrator administrator) {
		this.administrator = administrator;
	}

	public AdminServiceImlDAO getAdminServiceIml() {
		return adminServiceIml;
	}

	public void setAdminServiceIml(AdminServiceImlDAO adminServiceIml) {
		this.adminServiceIml = adminServiceIml;
	}

	public List<Administrator> getAdministratorlist() {
		return administratorlist;
	}

	public void setAdministratorlist(List<Administrator> administratorlist) {
		this.administratorlist = administratorlist;
	}

	public int getPagenow() {
		return pagenow;
	}

	public void setPagenow(int pagenow) {
		this.pagenow = pagenow;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String login() {
		String lname = administrator.getLoginName();
		String lpw = MyTools.MD5(administrator.getLoginPwd());
		String ss[] = { lname, lpw };
		String hql = "from Administrator where LOGINNAME=? and LOGINPWD=?";

		Administrator administrator = (Administrator) adminServiceIml.Login(
				hql, ss);
		// System.out.println(lpw);
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("admin", administrator);

		if (administrator != null)
			return "adminloginsucess";
		else
			return "adminloginerror";

	}

	public String save() {

		// administrator.setRegDate(new Date());
		// System.out.println(adminType);
		try {
			AdminType adminType1 = (AdminType) adminTypeServiceIml
					.loadObject(adminType);
			administrator.setAdminType(adminType1);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		administrator.setLoginPwd(MyTools.MD5(administrator.getLoginPwd()));
		if (adminServiceIml.addObject(administrator))
			return "osucess";
		else
			return "oerror";

	}

	public String exitLogin() {

		HttpSession session = ServletActionContext.getRequest().getSession();
		session.removeAttribute("admin");
		return "exitsucess";

	}

	public String del() {

		// System.out.println(administrator.getId());
		if (adminServiceIml.delObject(id))
			return "osucess";
		else
			return "oerror";

	}

	public String findPage() {

		administratorlist = adminServiceIml.findPage(pagenow);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("administratorlist", administratorlist);

		StringBuffer sbf = new StringBuffer();
		int currPage = 1;
		currPage = pagenow;
		int pages;// 总页数
		int count;// 总记录数
		count = adminServiceIml.find().size();

		// System.out.println(count);

		if (count % Constant.ADMINISTRSTOR_PAZESIZR == 0)// 统计当前总页数

			pages = count / Constant.ADMINISTRSTOR_PAZESIZR;//

		else

			pages = count / Constant.ADMINISTRSTOR_PAZESIZR + 1;
		if (currPage != 1)

			sbf
					.append("<a target='_self' href='admin_findPage.action?pagenow=1'>第一页</a><a target='_self' href='admin_findPage.action?pagenow="
							+ (currPage - 1) + "'>上一页</a>" + "&nbsp&nbsp");

		for (int i = currPage; i <= currPage + pages - 1; i++) {
			// int j =currPage+1;
			if (i == currPage)

				sbf.append("[" + i + "]" + "&nbsp&nbsp");

			else {

				if (i <= pages) {
					if (i <= (currPage + 14)) {
						sbf
								.append("<a target='_self' href='admin_findPage.action?pagenow="
										+ i + "'>" + i + "</a>" + "&nbsp&nbsp");
						// j++;
					} else {
						sbf.append("");
					}
				}

			}

		}

		if (currPage != pages)

			sbf
					.append("<a target='_self' href='admin_findPage.action?pagenow="
							+ (currPage + 1)
							+ "'>下一页</a><a target='_self' href='admin_findPage.action?pagenow="
							+ pages + "'>最后一页</a>" + "&nbsp&nbsp");

		String bar1 = sbf.toString();

		request.setAttribute("adminSystembar", bar1);

		if (administratorlist.size() > 0)
			return "findsucess";
		else
			return "finderror";

	}

	public String updateObject() {

		String[] ss = { administrator.getLoginName(),
				MD5.string2MD5(administrator.getLoginPwd()),
				administrator.getName(), administrator.getId() + "" };
		String hql = "update Administrator admin set admin.loginName=?, admin.loginPwd=?,admin.name=? where admin.id=?";
		if (adminServiceIml.updateObject(hql, ss))
			return "osucess";
		else
			return "oerror";

	}

	public String findoneadmin() {

		Administrator administrator = (Administrator) adminServiceIml
				.loadObject(id);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("admin", administrator);
		if (administrator != null)
			return "findsuc";
		else
			return "findadminerror";
	}
}
