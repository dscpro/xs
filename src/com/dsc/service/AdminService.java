package com.dsc.service;

import java.util.List;

import com.dsc.domain.Administrator;

public interface AdminService extends BaseServiceInter {
	public List<Administrator> findPage(int pageNow);

	// public Administrator loadAdministrator(Integer id);
}
