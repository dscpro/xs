package com.dsc.test;

import org.springframework.context.ApplicationContext;

import com.dsc.DAO.AdminServiceImlDAO;
import com.dsc.domain.Administrator;
import com.dsc.util.ApplicaionContextUtil;

public class Tester6 {
	public static void main(String[] args) {

		ApplicationContext ac = ApplicaionContextUtil.getApplicationContext();
		// ApplicationContext ac1 = new ClassPathXmlApplicationContext(
		// "applicationContext_beans.xml");
		AdminServiceImlDAO adminServiceImlDAO = (AdminServiceImlDAO) ac
				.getBean("adminServiceImlDAO");
		System.out.println(((Administrator) (adminServiceImlDAO.loadObject(1)))
				.getLoginName());

		// String s = "/sdsd/dsd.jpg";
		// System.out.println(s.replaceFirst("/", ""));
		// GoodServiceIml g = (GoodServiceIml) ac.getBean("goodServiceIml");
		// HibernateUtil h = (HibernateUtil) ac.getBean("hibernateUtil");
		// // System.out.println(goodServiceIml.find().get(0).getId());
		// System.out.println(((Good) (h.findById(Good.class, 1))).getId());
		// AdminType obj = new AdminType();
		// obj.setName("123");
		// System.out.println(new GoodAction().del());
		// String[] parameters = { "admin", "admin" };
		// String hql = "from Administrator where LOGINNAME=? and LOGINPWD=?";
		// HibernateUtil hibernateUtil = (HibernateUtil) ac
		// .getBean("hibernateUtil");
		// Administrator administrator = (Administrator)
		// hibernateUtil.Login(hql,
		// parameters);
		// System.out.println(administrator.getLoginName());

		// HibernateUtil hibernateUtil = (HibernateUtil) ac
		// .getBean("hibernateUtil");
		// ;
		//
		// System.out.println(((Administrator) (hibernateUtil.findById(
		// Administrator.class, 1))).getAdminType().getId());
		// System.out.println(MD5.string2MD5("admin"));
		// HibernateUtil hibernateUtil = (HibernateUtil) ac
		// .getBean("hibernateUtil");
		// hibernateUtil.openSession();
	}
}
