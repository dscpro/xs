package com.dsc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dsc.domain.Administrator;

public class OrdersAdmin implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) arg0;
		HttpServletResponse rep = (HttpServletResponse) arg1;
		HttpSession session = req.getSession();
		Administrator aa = (Administrator) session.getAttribute("admin");
		if (aa.getAdminType().getId() == 1 || aa.getAdminType().getId() == 2
				&& aa != null) {
			arg2.doFilter(req, rep);
		} else {
			rep.sendRedirect("../admin/permissionerror.jsp");

		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
