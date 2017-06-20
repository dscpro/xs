package com.dsc.DAO;

import java.util.List;

import com.dsc.domain.Customer;
import com.dsc.domain.Orders;

public interface OrdersServiceDAO extends BaseServiceInterDAO {
	public List<Orders> findPage(int pageNow);

	public List<Orders> findPageByCu(int pageNow, Customer cc);
}
