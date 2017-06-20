package com.dsc.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsc.DAO.OrdersServiceImlDAO;
import com.dsc.DAO.OrdersServiceStatusImlDAO;
import com.dsc.domain.Cart;
import com.dsc.domain.Constant;
import com.dsc.domain.Customer;
import com.dsc.domain.Items;
import com.dsc.domain.Orders;
import com.dsc.domain.Ordersstatus;
import com.opensymphony.xwork2.ActionSupport;

public class OrdersAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Orders orders;
	private List<Orders> orderslist;
	private OrdersServiceImlDAO ordersServiceIml = null;
	private int pagenow;
	private Customer customer;
	private String buyer;
	private String address;
	private int id;
	private String money;
	private String seachdistrict;
	private String seachprov;
	private String addressjuti;
	private String homecity;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getSeachdistrict() {
		return seachdistrict;
	}

	public void setSeachdistrict(String seachdistrict) {
		this.seachdistrict = seachdistrict;
	}

	public String getSeachprov() {
		return seachprov;
	}

	public void setSeachprov(String seachprov) {
		this.seachprov = seachprov;
	}

	public String getAddressjuti() {
		return addressjuti;
	}

	public void setAddressjuti(String addressjuti) {
		this.addressjuti = addressjuti;
	}

	public String getHomecity() {
		return homecity;
	}

	public void setHomecity(String homecity) {
		this.homecity = homecity;
	}

	public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public List<Orders> getOrderslist() {
		return orderslist;
	}

	public void setOrderslist(List<Orders> orderslist) {
		this.orderslist = orderslist;
	}

	public OrdersServiceImlDAO getOrdersServiceIml() {
		return ordersServiceIml;
	}

	public void setOrdersServiceIml(OrdersServiceImlDAO ordersServiceIml) {
		this.ordersServiceIml = ordersServiceIml;
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

	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String save() {

		HttpSession session = ServletActionContext.getRequest().getSession();
		ArrayList<Items> cart = (ArrayList<Items>) session.getAttribute("cart");

		// 获得当前用户的id
		Customer c = (Customer) session.getAttribute("user");
		// int customer = c.getId();
		// 获得当前填写的收货人的值
		// String username = buyer;
		// 获得当前的地址
		// String address1 = address;
		// 获得总金额
		// Double sum = money;
		// 获得订单日期
		// SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		// String date = df.format(new Date());
		// 获得精简后订单号
		// String orderno = ((date.replace("-", "")).replace(" ", "")).replace(
		// ":", "");

		Orders orders = new Orders();
		orders.setBuyer(buyer);
		orders.setCustomer(c);
		// System.out.println(money);
		orders.setMoney(Double.parseDouble(money));
		orders.setOrderDate(new Date());
		orders.setAddress(address);
		OrdersServiceStatusImlDAO ordersServiceStatusIml = new OrdersServiceStatusImlDAO();
		Ordersstatus ordersstatus = null;
		ordersstatus = (Ordersstatus) ordersServiceStatusIml.loadObject(1);
		orders.setOrdersstatus(ordersstatus);
		// System.out.println(buyer + c.getId() + money + address);
		// orders.setCart(cart);
		// orders.setOrdersstatus(ordersstatus)

		boolean flag = false;
		boolean flag1 = false;
		try {
			flag = ordersServiceIml.addObject(orders);
			for (int i = 0; i < cart.size(); i++) {
				Cart carts = new Cart();
				carts.setGood(cart.get(i).getGoods());
				carts.setOrder(orders);
				carts.setNumgood(cart.get(i).getNum());
				flag1 = ordersServiceIml.addObject(carts);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (flag && flag1) {
			session.removeAttribute("cart");
			return "osucess";
		} else {
			return "oerror";
		}

	}

	public String del() {

		// System.out.println(good.getId());
		if (ordersServiceIml.delObject(id))
			return "osucess";
		else
			return "oerror";

	}

	public String findPageByAdmin() {

		// System.out.println(pagenow);
		orderslist = ordersServiceIml.findPage(pagenow);

		HttpServletRequest session = ServletActionContext.getRequest();
		session.setAttribute("orderslist", orderslist);

		// System.out.println(categories.get(0).getCateName());
		StringBuffer sbf = new StringBuffer();
		int currPage = 1;
		currPage = pagenow;
		int pages;// 总页数
		int count;// 总记录数
		count = ordersServiceIml.find().size();

		// System.out.println(count);

		if (count % Constant.ORDERS_PAZESIZR == 0)// 统计当前总页数

			pages = count / Constant.ORDERS_PAZESIZR;//

		else

			pages = count / Constant.ORDERS_PAZESIZR + 1;
		if (currPage != 1)

			sbf
					.append("<a target='_self' href='orders_findPageByAdmin.action?pagenow=1'>第一页</a><a target='_self' href='orders_findPageByAdmin.action?pagenow="
							+ (currPage - 1) + "'>上一页</a>" + "&nbsp&nbsp");

		for (int i = currPage; i <= currPage + pages - 1; i++) {
			// int j =currPage+1;
			if (i == currPage)

				sbf.append("[" + i + "]" + "&nbsp&nbsp");

			else {

				if (i <= pages) {
					if (i <= (currPage + 14)) {
						sbf
								.append("<a target='_self' href='orders_findPageByAdmin.action?pagenow="
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
					.append("<a target='_self' href='orders_findPageByAdmin.action?pagenow="
							+ (currPage + 1)
							+ "'>下一页</a><a target='_self' href='orders_findPageByAdmin.action?pagenow="
							+ pages + "'>最后一页</a>" + "&nbsp&nbsp");

		String bar1 = sbf.toString();

		session.setAttribute("bar", bar1);
		return "adminfindsucess";
	}

	public String updateAdminObject() {

		String hql = "update Orders set ordersstatus=? where id=?";
		String[] parameters = { "3", id + "" };
		if (ordersServiceIml.updateObject(hql, parameters)) {

			return "adminupdatesucess";
		} else
			return "oerror";
	}

	public String findPageByCu() {

		// System.out.println(pagenow);
		HttpSession session1 = ServletActionContext.getRequest().getSession();
		Customer cc = (Customer) session1.getAttribute("user");
		// System.out.println(cc.getId());
		// GoodLikeServiceIml goodLikeServiceIml = new GoodLikeServiceIml();
		// System.out.println(pagenow);
		orderslist = ordersServiceIml.findPageByCu(1, cc);

		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("orderslist", orderslist);
		// System.out.println("--------"
		// + goodLikelist.get(0).getCustomer().getName());
		if (orderslist != null)
			return "findsucess";
		else
			return "finderror";

	}
}
