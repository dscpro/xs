package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.AdminType;

public interface AdminTypeServiceDAO extends BaseServiceInterDAO {
	public List<AdminType> findPage(int pageNow);
}
