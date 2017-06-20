package com.dsc.util;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class HibernateUtil {
	boolean flag = false;
	Object obj = null;
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();

	public HibernateUtil() {
	};

	// static {
	// sessionFactory = new Configuration().configure().buildSessionFactory();
	// }

	public Session openSession() {

		return this.sessionFactory.openSession();
	}

	public Session getCurrentSession() {

		if (this.sessionFactory.getCurrentSession() == null) {
			return this.sessionFactory.openSession();

		} else
			return this.sessionFactory.getCurrentSession();

	}

	public void closeCurrentSession() {

		Session s = getCurrentSession();

		if (s != null && s.isOpen()) {
			s.close();
			threadLocal.set(null);
		}
	}

	/**
	 * 
	 * @param clazz
	 *            要查找的对象的class
	 * @param id
	 *            要查找的对象的id
	 * @return id 查询获得相应数据库对象
	 */
	public Object findById(Class clazz, java.io.Serializable id) {

		obj = getCurrentSession().get(clazz, id);

		return obj;
	}

	/**
	 * 
	 * @param hql
	 *            要执行的hql语句
	 * @param parameters
	 *            要执行的语句中的变量
	 * @function 统一更新方法
	 */
	public boolean executeUpdate(String hql, String[] parameters) {

		Query query = getCurrentSession().createQuery(hql);

		if (parameters != null && parameters.length > 0) {
			for (int i = 0; i < parameters.length; i++) {
				if (i == parameters.length - 1)
					query.setInteger(i, Integer.parseInt(parameters[i]));
				else
					query.setString(i, parameters[i]);
			}
		}
		query.executeUpdate();
		flag = true;

		return flag;
	}

	/**
	 * 
	 * @param hql
	 *            要执行的hql语句
	 * @param parameters
	 *            要执行的语句中的变量
	 * @author 统一更新方法的OpenInView
	 */
	public void executeUpdateOpenInView(String hql, String[] parameters) {

		Session s = getCurrentSession();

		Query query = s.createQuery(hql);

		if (parameters != null && parameters.length > 0) {
			for (int i = 0; i < parameters.length; i++) {
				query.setString(i, parameters[i]);
			}
		}
		query.executeUpdate();

	}

	/**
	 * 
	 * @param obj
	 *            要保存的对象
	 * 
	 * @author 统一保存方法
	 */

	public boolean save(Object obj) {
		getCurrentSession().save(obj);
		flag = true;
		return flag;
	}

	public boolean update(Object obj) {

		getCurrentSession().update(obj);
		flag = true;

		return flag;
	}

	/**
	 * 
	 * @param hql
	 *            要执行的hql语句
	 * @param parameters
	 *            要执行的语句中的变量
	 * @param pageSize
	 *            每一页显示的条数
	 * @param pageNow
	 *            当前的页码
	 * @author 带分页的统一查询方法
	 */
	public List executeQueryByPage(String hql, String[] parameters,
			int pageSize, int pageNow) {
		Session s = null;
		List list = null;

		try {
			s = openSession();
			Query query = s.createQuery(hql);

			if (parameters != null && parameters.length > 0) {
				for (int i = 0; i < parameters.length; i++) {
					query.setString(i, parameters[i]);
				}
			}
			query.setFirstResult((pageNow - 1) * pageSize).setMaxResults(
					pageSize);

			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
			// TODO: handle exception
		} finally {

			if (s != null && s.isOpen()) {
				s.close();
			}

		}
		return list;
	}

	/**
	 * 
	 * @param hql
	 *            要执行的hql语句
	 * @param parameters
	 *            要执行的语句中的变量
	 */
	public List executeQuery(String hql, String[] parameters) {

		Session s = null;
		List list = null;

		try {
			s = openSession();
			Query query = s.createQuery(hql);

			if (parameters != null && parameters.length > 0) {
				for (int i = 0; i < parameters.length; i++) {
					query.setString(i, parameters[i]);
				}
			}
			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
			// TODO: handle exception
		} finally {

			if (s != null && s.isOpen()) {
				s.close();
			}

		}
		return list;
	}

	/**
	 * 
	 * @param hql
	 *            要执行的hql语句
	 * @param parameters
	 *            要执行的语句中的变量
	 * 
	 * @author 测试用户登录
	 */
	public Object Login(String hql, String[] parameters) {

		Query query = getCurrentSession().createQuery(hql);

		if (parameters != null && parameters.length > 0) {
			for (int i = 0; i < parameters.length; i++) {
				query.setString(i, parameters[i]);
			}
		}
		// System.out.println(hql + "  " + parameters[1] + "   "
		// + parameters[0]);
		obj = query.uniqueResult();

		return obj;
	}

	/**
	 * 
	 * @param hql
	 *            要执行的hql语句
	 * @param parameters
	 *            要执行的语句中的变量
	 * 
	 * @author del用户
	 */
	public boolean del(Class clazz, java.io.Serializable id) {

		getCurrentSession().delete(findById(clazz, id));

		flag = true;

		return flag;
	}
}
