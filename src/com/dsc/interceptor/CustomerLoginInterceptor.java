package com.dsc.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class CustomerLoginInterceptor implements Interceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		// TODO Auto-generated method stub

	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		Object user = ActionContext.getContext().getSession().get("user");
		// 如果user不为null,代表用户已经登录,允许执行action中的方法
		if (user != null) {
			return invocation.invoke();
		}
		// ActionContext.getContext().put("message", "你没有权限执行该操作");
		return "loginerror";
	}

}
