package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Customer;
import com.dsc.domain.GoodLike;

public interface GoodLikeServiceDAO extends BaseServiceInterDAO {
	public List<GoodLike> findPageByCu(int pageNow, Customer cc);
}
