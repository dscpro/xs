package com.dsc.service;

import java.util.List;

import com.dsc.domain.Customer;
import com.dsc.domain.Orders;

public interface OrdersService extends BaseServiceInter {
	public List<Orders> findPage(int pageNow);

	public List<Orders> findPageByCu(int pageNow, Customer cc);
}
