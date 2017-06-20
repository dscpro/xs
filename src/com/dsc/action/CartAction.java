package com.dsc.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsc.DAO.CartServiceImlDAO;
import com.dsc.DAO.GoodServiceImlDAO;
import com.dsc.domain.Cart;
import com.dsc.domain.Good;
import com.dsc.domain.Items;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Cart cart;
	private Items items;
	private List<Cart> carts;
	private CartServiceImlDAO cartServiceIml;
	private int pagenow;
	private String goodid;
	private String checkway;
	private String value;
	private String changeQuantity;

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getChangeQuantity() {
		return changeQuantity;
	}

	public void setChangeQuantity(String changeQuantity) {
		this.changeQuantity = changeQuantity;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Items getItems() {
		return items;
	}

	public void setItems(Items items) {
		this.items = items;
	}

	public List<Cart> getCarts() {
		return carts;
	}

	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}

	public CartServiceImlDAO getCartServiceIml() {
		return cartServiceIml;
	}

	public void setCartServiceIml(CartServiceImlDAO cartServiceIml) {
		this.cartServiceIml = cartServiceIml;
	}

	public int getPagenow() {
		return pagenow;
	}

	public void setPagenow(int pagenow) {
		this.pagenow = pagenow;
	}

	public String getGoodid() {
		return goodid;
	}

	public void setGoodid(String goodid) {
		this.goodid = goodid;
	}

	public String getCheckway() {
		return checkway;
	}

	public void setCheckway(String checkway) {
		this.checkway = checkway;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String save() {

		// good.setRegDate(new Date());

		if (cartServiceIml.addObject(cart))
			return "osucess";
		else
			return "oerror";

	}

	public String del() {

		// System.out.println(good.getId());
		if (cartServiceIml.delObject(cart.getId()))
			return "osucess";
		else
			return "oerror";

	}

	public String findPage() {

		// System.out.println(pagenow);
		carts = cartServiceIml.findPage(pagenow);
		if (carts.size() > 0)
			return "findsucess";
		else
			return "finderror";

	}

	public String updateObject() {

		String[] ss = { cart.getId() + "" };
		String hql = "update Cart cart set cart.loginPwd=? where cart.id=?";

		// System.out.println(ss[0] + " 234 " + ss[1] + "  234 " + ss[2]
		// + "  234 " + ss[3] + " 234  " + ss[4] + " 234  ");

		if (cartServiceIml.updateObject(hql, ss))
			return "osucess";
		else
			return "oerror";

	}

	public String addToCar() {

		HttpSession session = ServletActionContext.getRequest().getSession();
		Cart cart = new Cart();
		ArrayList<Items> car = (ArrayList) session.getAttribute("cart");
		// out.print(checkway);
		if (car != null)
			cart.setGoods(car);

		Good g = null;

		g = (Good) new GoodServiceImlDAO().loadObject(Integer.parseInt(goodid));
		// System.out.println("---" + g.getMerName());
		try {
			cart.addToCart(g, 1, checkway);
		} catch (Exception e) {
			e.printStackTrace();
		}

		// System.out.println(cart.getGoods().get(0).getGoods().getMerName());
		session.setAttribute("cart", cart.getGoods());
		// session.getAttribute("cart");
		session.setMaxInactiveInterval(60 * 60);

		return "addtocartsucess";

	}

	public String delFromCar() {

		HttpSession session = ServletActionContext.getRequest().getSession();
		Cart cartManager = new Cart();

		// �õ����ﳵ����
		ArrayList<Items> cart = (ArrayList<Items>) session.getAttribute("cart");
		// System.out.println(cart.get(0).getNum());
		cartManager.setGoods(cart);
		cartManager.delete(goodid);
		if (cartManager.getGoods().size() != 0) {
			session.setAttribute("cart", cartManager.getGoods());
		} else {
			session.removeAttribute("cart");
		}

		return "addtocartsucess";

	}

	public String updateNum() {

		HttpSession session = ServletActionContext.getRequest().getSession();

		Cart cartManager = new Cart();

		// �õ����ﳵ����
		ArrayList<Items> cart = (ArrayList<Items>) session.getAttribute("cart");

		cartManager.setGoods(cart);
		if (value.equals("add") && goodid != null) {
			cartManager.addnum(goodid);
		} else {
			if (value.equals("del") && goodid != null) {
				cartManager.delnum(goodid);
			} else {
				if (value.equals("change") && goodid != null) {
					cartManager.change(goodid, changeQuantity);
				}
			}
		}
		/*
		 * else { cartManager.update(goodsid,Integer.parseInt(quantity)); }
		 */
		session.setAttribute("cart", cartManager.getGoods());
		return "addtocartsucess";
	}

}
