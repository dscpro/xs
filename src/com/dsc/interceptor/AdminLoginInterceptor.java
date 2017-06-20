package com.dsc.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AdminLoginInterceptor implements Interceptor {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String excludeMethods;

	public String getExcludeMethods() {
		return excludeMethods;
	}

	public void setExcludeMethods(String excludeMethods) {
		this.excludeMethods = excludeMethods;
	}

	public String getExcludeActions() {
		return excludeActions;
	}

	public void setExcludeActions(String excludeActions) {
		this.excludeActions = excludeActions;
	}

	private String excludeActions;

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

		String actionName = invocation.getInvocationContext().getName();
		// // 配置文件中 排除的 action
		// String[] excludeAction = excludeActions.split(",");
		// for (int i = 0; i < excludeAction.length; i++) {
		// if (actionName.startsWith(excludeAction[i])) {
		// return invocation.invoke();
		// }
		// }

		// 配置文件中 排除的 Method
		String[] excludeMethod = excludeMethods.split(",");
		for (int i = 0; i < excludeMethod.length; i++) {
			if (actionName.endsWith(excludeMethod[i])) {
				return invocation.invoke();
			}
		}

		Object user = ActionContext.getContext().getSession().get("admin");
		// 如果user不为null,代表用户已经登录,允许执行action中的方法
		if (user != null) {
			return invocation.invoke();
		}
		// ActionContext.getContext().put("message", "你没有权限执行该操作");
		return "adminloginerror";
	}

}
