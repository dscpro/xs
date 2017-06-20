package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Administrator;

public interface AdminServiceDAO extends BaseServiceInterDAO {
	public List<Administrator> findPage(int pageNow);

	// public Administrator loadAdministrator(Integer id);
}
