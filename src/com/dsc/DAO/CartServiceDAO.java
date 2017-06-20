package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Cart;

public interface CartServiceDAO extends BaseServiceInterDAO {
	public List<Cart> findPage(int pageNow);

}
