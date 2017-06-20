package com.dsc.service;

import java.util.List;

import com.dsc.domain.Category;

public interface CategoryService extends BaseServiceInter {
	public List<Category> findPage(int pageNow);

}
