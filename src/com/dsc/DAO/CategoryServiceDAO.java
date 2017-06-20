package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Category;

public interface CategoryServiceDAO extends BaseServiceInterDAO {
	public List<Category> findPage(int pageNow);

}
