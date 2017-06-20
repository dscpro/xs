package com.dsc.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsc.DAO.CategoryServiceImlDAO;
import com.dsc.domain.Category;
import com.dsc.domain.Constant;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Category category;
	private List<Category> categories;
	private CategoryServiceImlDAO categoryServiceIml;
	private int pagenow;
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Category> getCategories() {
		return categories;
	}

	public void setCategories(List<Category> categories) {
		this.categories = categories;
	}

	public CategoryServiceImlDAO getCategoryServiceIml() {
		return categoryServiceIml;
	}

	public void setCategoryServiceIml(CategoryServiceImlDAO categoryServiceIml) {
		this.categoryServiceIml = categoryServiceIml;
	}

	public int getPagenow() {
		return pagenow;
	}

	public void setPagenow(int pagenow) {
		this.pagenow = pagenow;
	}

	public String save() {

		// System.out.println(category.getCateName());
		if (categoryServiceIml.addObject(category))
			return "osucess";
		else
			return "oerror";

	}

	public String del() {

		// System.out.println(good.getId());
		if (categoryServiceIml.delObject(id))
			return "osucess";
		else
			return "oerror";

	}

	public String findPage() {

		// System.out.println(pagenow);
		categories = categoryServiceIml.findPage(pagenow);
		HttpServletRequest request = ServletActionContext.getRequest();

		request.setAttribute("categories", categories);
		HttpSession session = ServletActionContext.getRequest().getSession();
		// System.out.println(categories.get(0).getCateName());
		StringBuffer sbf = new StringBuffer();
		int currPage = 1;
		currPage = pagenow;
		int pages;// 总页数
		int count;// 总记录数
		count = categoryServiceIml.find().size();

		// System.out.println(count);

		if (count % Constant.CATEGORY_PAZESIZR == 0)// 统计当前总页数

			pages = count / Constant.CATEGORY_PAZESIZR;//

		else

			pages = count / Constant.CATEGORY_PAZESIZR + 1;
		if (currPage != 1)

			sbf
					.append("<a target='_self' href='cate_findPage.action?pagenow=1'>第一页</a><a target='_self' href='cate_findPage.action?pagenow="
							+ (currPage - 1) + "'>上一页</a>" + "&nbsp&nbsp");

		for (int i = currPage; i <= currPage + pages - 1; i++) {
			// int j =currPage+1;
			if (i == currPage)

				sbf.append("[" + i + "]" + "&nbsp&nbsp");

			else {

				if (i <= pages) {
					if (i <= (currPage + 14)) {
						sbf
								.append("<a target='_self' href='cate_findPage.action?pagenow="
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
					.append("<a target='_self' href='cate_findPage.action?pagenow="
							+ (currPage + 1)
							+ "'>下一页</a><a target='_self' href='cate_findPage.action?pagenow="
							+ pages + "'>最后一页</a>" + "&nbsp&nbsp");

		String bar1 = sbf.toString();

		session.setAttribute("categorylistbar", bar1);
		return "findsucess";

	}

	public String find() {

		HttpServletRequest request = ServletActionContext.getRequest();

		// System.out.println(pagenow);
		categories = categoryServiceIml.find();
		request.setAttribute("categoryList", categories);
		if (categories.size() > 0)
			return "adminfindsucess";
		else
			return "adminfinderror";

	}

	public String updateObject() {

		String[] ss = { category.getCateName(), category.getId() + "" };
		String hql = "update Category category set category.cateName=? where category.id=?";
		if (categoryServiceIml.updateObject(hql, ss))
			return "osucess";
		else
			return "oerror";

	}
}
