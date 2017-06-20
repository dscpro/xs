package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Good;

public interface GoodServiceDAO extends BaseServiceInterDAO {
	public List<Good> findPage(int pageNow);
}
