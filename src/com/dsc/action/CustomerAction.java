package com.dsc.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsc.DAO.CustomerServiceImlDAO;
import com.dsc.domain.Constant;
import com.dsc.domain.Customer;
import com.dsc.domain.Memberlevel;
import com.dsc.util.HibernateUtil;
import com.dsc.util.MD5;
import com.dsc.util.MyTools;
import com.opensymphony.xwork2.ActionSupport;

public class CustomerAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Customer customer;
	private CustomerServiceImlDAO customerServiceIml;
	private List<Customer> customerlist = null;
	private int pagenow;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPagenow() {
		return pagenow;
	}

	public void setPagenow(int pagenow) {
		this.pagenow = pagenow;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Customer> getCustomerlist() {
		return customerlist;
	}

	public void setCustomerlist(List<Customer> customerlist) {
		this.customerlist = customerlist;
	}

	public CustomerServiceImlDAO getCustomerServiceIml() {
		return customerServiceIml;
	}

	public void setCustomerServiceIml(CustomerServiceImlDAO customerServiceIml) {
		this.customerServiceIml = customerServiceIml;
	}

	public String loginPre() {

		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cs = request.getCookies();

		if (cs != null && cs.length > 0) {
			for (int i = 0; i < cs.length; i++) {
				Cookie c = cs[i];
				if (c.getName().equals("username")) {
					String value = c.getValue();
					request.setAttribute("us", value);
				}

			}
		}

		return "presucess";
	}

	public String login() {
		String lname = customer.getLoginName();
		String lpw = MyTools.MD5(customer.getLoginPwd());
		// System.out.println(lname + "   " + lpw);
		String ss[] = { lname, lpw };
		// System.out.println(lname + "   " + MD5.convertMD5(lpw));
		// String hql = "from Customer where LOGINNAME=? and LOGINPWD=?";
		String hql = "from Customer where LOGINNAME=? and LOGINPWD=?";

		Customer customer1 = (Customer) customerServiceIml.Login(hql, ss);
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("user", customer1);
		// System.out.println(customer1.getId());

		if (customer1 != null) {
			if (session.getAttribute("cart") != null)
				return "loginsucessgood";
			else
				return "loginsucess";
		} else
			return "loginerror";

	}

	public String exitLogin() {

		HttpSession session = ServletActionContext.getRequest().getSession();
		session.removeAttribute("user");
		return "exitsucess";

	}

	public String save() {

		customer.setRegDate(new Date());
		customer.setLoginPwd(MyTools.MD5(customer.getLoginPwd()));
		HibernateUtil hibernateUtil = new HibernateUtil();
		customer.setMemberlevel((Memberlevel) hibernateUtil.findById(
				Memberlevel.class, 2));
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("user", customer);
		if (customerServiceIml.addObject(customer))
			return "osucess";
		else
			return "oerror";

	}

	public String del() {

		// System.out.println(customer.getId());
		if (customerServiceIml.delObject(id))
			return "adminosucess";
		else
			return "adminoerror";

	}

	public String findPage() {

		customerlist = customerServiceIml.findPage(pagenow);
		// System.out.println(customerlist.get(0).getAddress());
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = ServletActionContext.getRequest().getSession();
		request.setAttribute("customerlist", customerlist);

		StringBuffer sbf = new StringBuffer();
		int currPage = 1;
		currPage = pagenow;
		int pages;// 总页数
		int count;// 总记录数
		count = customerServiceIml.find().size();

		// System.out.println(count);

		if (count % Constant.CUSTOMER_PAZESIZR == 0)// 统计当前总页数

			pages = count / Constant.CUSTOMER_PAZESIZR;//

		else

			pages = count / Constant.CUSTOMER_PAZESIZR + 1;
		if (currPage != 1)

			sbf
					.append("<a target='_self' href='customer_findPage.action?pagenow=1'>第一页</a><a target='_self' href='customer_findPage.action?pagenow="
							+ (currPage - 1) + "'>上一页</a>" + "&nbsp&nbsp");

		for (int i = currPage; i <= currPage + pages - 1; i++) {
			// int j =currPage+1;
			if (i == currPage)

				sbf.append("[" + i + "]" + "&nbsp&nbsp");

			else {

				if (i <= pages) {
					if (i <= (currPage + 14)) {
						sbf
								.append("<a target='_self' href='customer_findPage.action?pagenow="
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
					.append("<a target='_self' href='customer_findPage.action?pagenow="
							+ (currPage + 1)
							+ "'>下一页</a><a target='_self' href='customer_findPage.action?pagenow="
							+ pages + "'>最后一页</a>" + "&nbsp&nbsp");

		String bar1 = sbf.toString();

		session.setAttribute("adminCustomerbar", bar1);

		return "findsucess";

	}

	public String updateObject() {

		// String[] ss = { customer.getName(), customer.getPhone(),
		// customer.getAddress(), customer.geteMail(),
		// customer.getId() + "" };
		// System.out.println(ss[0] + "   " + ss[1] + "   " + ss[2] + "   "
		// + ss[3] + "   " + ss[4]);
		// // String hql =
		// "update Customer customer set customer.name=?,customer.phone=?,customer.address=?,customer.eMail=? where customer.id=?";

		// System.out.println(ss[0] + " 234 " + ss[1] + "  234 " + ss[2]
		// + "  234 " + ss[3] + " 234  " + ss[4] + " 234  ");
		customer.setLoginPwd(MD5.string2MD5(customer.getLoginPwd()));
		if (customerServiceIml.updateObject(customer))
			return "osucess";
		else
			return "oerror";

	}
}
