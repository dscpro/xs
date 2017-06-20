package com.dsc.service;

import java.util.List;

import com.dsc.domain.AdminType;

public interface AdminTypeService extends BaseServiceInter {
	public List<AdminType> findPage(int pageNow);
}
