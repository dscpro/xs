package com.dsc.interceptor;

import com.dsc.domain.Administrator;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class SysIntercepter implements Interceptor {
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
		// 配置文件中 排除的 Method
		String[] excludeMethod = excludeMethods.split(",");
		for (int i = 0; i < excludeMethod.length; i++) {
			if (actionName.endsWith(excludeMethod[i])) {
				return invocation.invoke();
			}
		}

		Administrator user = (Administrator) ActionContext.getContext()
				.getSession().get("admin");

		if (user.getAdminType().getId() == 1) {
			return invocation.invoke();
		}

		return "adminClerror";
	}

}
