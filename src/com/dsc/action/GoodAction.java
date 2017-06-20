package com.dsc.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dsc.DAO.CategoryServiceImlDAO;
import com.dsc.DAO.GoodServiceImlDAO;
import com.dsc.domain.Category;
import com.dsc.domain.Constant;
import com.dsc.domain.Customer;
import com.dsc.domain.Good;
import com.dsc.domain.GoodLike;
import com.opensymphony.xwork2.ActionSupport;

public class GoodAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Good good;
	private List<Good> goodlist;
	private static GoodServiceImlDAO goodServiceIml;
	private int pagenow;
	private int id;
	private int category;
	private CategoryServiceImlDAO categoryServiceIml;
	private File upload; // 上传文件，名称为xxx
	private String uploadFileName;
	private String uploadDir;

	public String getUploadDir() {
		return uploadDir;
	}

	public void setUploadDir(String uploadDir) {
		this.uploadDir = uploadDir;
	}

	public File getUpload() {
		return upload;
	}

	public void setUpload(File upload) {
		this.upload = upload;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public CategoryServiceImlDAO getCategoryServiceIml() {
		return categoryServiceIml;
	}

	public void setCategoryServiceIml(CategoryServiceImlDAO categoryServiceIml) {
		this.categoryServiceIml = categoryServiceIml;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public List<Good> getGoodlist() {
		return goodlist;
	}

	public void setGoodlist(List<Good> goodlist) {
		this.goodlist = goodlist;
	}

	public GoodServiceImlDAO getGoodServiceIml() {
		return goodServiceIml;
	}

	public void setGoodServiceIml(GoodServiceImlDAO goodServiceIml) {
		this.goodServiceIml = goodServiceIml;
	}

	public int getPagenow() {
		return pagenow;
	}

	public void setPagenow(int pagenow) {
		this.pagenow = pagenow;
	}

	public String save() throws Exception {
		String newFileName = null;
		long now = new Date().getTime();
		// 获取文件存储路径
		String picture = ServletActionContext.getRequest().getRealPath(
				uploadDir);
		File dir = new File(picture);

		if (!dir.exists())
			dir.mkdir();
		int index = uploadFileName.lastIndexOf('.');
		if (index != -1)
			newFileName = now + uploadFileName.substring(index);
		else
			newFileName = Long.toString(now);
		BufferedOutputStream bos = null;
		BufferedInputStream bis = null;
		try {
			FileInputStream fis = new FileInputStream(upload);
			bis = new BufferedInputStream(fis);
			FileOutputStream fos = new FileOutputStream(new File(dir,
					newFileName));
			bos = new BufferedOutputStream(fos);
			byte buffer[] = new byte[4096];
			int count = 0;
			while ((count = bis.read(buffer)) > 0) {
				bos.write(buffer, 0, count);
			}
		} finally {
			try {
				if (bos != null)
					bos.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			try {
				if (bis != null)
					bis.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}

		}
		String picturesrc = uploadDir + "/" + newFileName;
		good.setPicture(picturesrc.replaceFirst("/", ""));
		good.setCategory((Category) categoryServiceIml.loadObject(category));
		// good.getCategory().getCateName();
		if (goodServiceIml.addObject(good))
			return "osucess";
		else
			return "oerror";

	}

	public String del() {

		// System.out.println(good.getId());
		if (goodServiceIml.delObject(id))
			return "osucess";
		else
			return "oerror";

	}

	public String find() {

		// System.out.println("************" + pagenow);
		goodlist = goodServiceIml.findPage(pagenow);

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

	public String findPage() {

		goodlist = goodServiceIml.findPage(pagenow);
		// System.out.println(goodlist.get(0).getMerName());
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("goods", goodlist);
		HttpSession session = ServletActionContext.getRequest().getSession();
		// System.out.println(categories.get(0).getCateName());
		StringBuffer sbf = new StringBuffer();
		int currPage = 1;
		currPage = pagenow;
		int pages;// 总页数
		int count;// 总记录数
		count = goodServiceIml.find().size();

		// System.out.println(count);

		if (count % Constant.GOOD_PAZESIZR == 0)// 统计当前总页数

			pages = count / Constant.GOOD_PAZESIZR;//

		else

			pages = count / Constant.GOOD_PAZESIZR + 1;
		if (currPage != 1)

			sbf
					.append("<a target='_self' href='good_findPage.action?pagenow=1'>第一页</a><a target='_self' href='good_findPage.action?pagenow="
							+ (currPage - 1) + "'>上一页</a>" + "&nbsp&nbsp");

		for (int i = currPage; i <= currPage + pages - 1; i++) {
			// int j =currPage+1;
			if (i == currPage)

				sbf.append("[" + i + "]" + "&nbsp&nbsp");

			else {

				if (i <= pages) {
					if (i <= (currPage + 14)) {
						sbf
								.append("<a target='_self' href='good_findPage.action?pagenow="
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
					.append("<a target='_self' href='good_findPage.action?pagenow="
							+ (currPage + 1)
							+ "'>下一页</a><a target='_self' href='good_findPage.action?pagenow="
							+ pages + "'>最后一页</a>" + "&nbsp&nbsp");

		String bar1 = sbf.toString();

		session.setAttribute("bar", bar1);
		return "adminfindsucess";

	}

	public String loadOneGood() {

		// System.out.println("________" + id);
		good = (Good) goodServiceIml.loadObject(id);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("goodload", good);

		if (good != null)
			return "findsucess";
		else
			return "finderror";

	}

	public String adminloadOneGood() {

		// System.out.println("________" + id);
		good = (Good) goodServiceIml.loadObject(id);

		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("admingoodload", good);
		List<Category> categories = categoryServiceIml.find();
		request.setAttribute("categoryList", categories);
		if (good != null)
			return "adminloadgoodsucess";
		else
			return "adminloadgooderror";

	}

	public String addOneGoodLike() {

		// // System.out.println("________" + id);
		good = (Good) goodServiceIml.loadObject(id);
		HttpSession session1 = ServletActionContext.getRequest().getSession();
		Customer customer = (Customer) session1.getAttribute("user");
		GoodLike goodLike = new GoodLike();
		goodLike.setCustomer(customer);
		goodLike.setGood(good);
		Set<GoodLike> goodLikes = new HashSet<GoodLike>();
		goodLikes.add(goodLike);
		customer.setListGoodLike(goodLikes);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("goodload", good);

		boolean flag = goodServiceIml.updateObject(customer);
		request.setAttribute("flag", flag);
		if (flag)
			return "addsucess";
		else
			return "adderror";

	}

	public String updateObject() {

		// String[] ss = { ,good.getId() + "" };
		// String hql =
		// "update Good good set good.merName=?,good.price=?,good.sPrice=?,good.inventory=?,good.picture=?,good.manufacturer=? where good.id=?";

		// System.out.println(ss[0] + " 234 " + ss[1] + "  234 " + ss[2]
		// + "  234 " + ss[3] + " 234  " + ss[4] + " 234  ");
		CategoryServiceImlDAO categoryServiceIml = new CategoryServiceImlDAO();
		good.setCategory((Category) categoryServiceIml.loadObject(category));
		if (goodServiceIml.updateObject(good))
			return "osucess";
		else
			return "oerror";

	}
}
