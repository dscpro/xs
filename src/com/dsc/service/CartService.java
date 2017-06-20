package com.dsc.service;

import java.util.List;

import com.dsc.domain.Cart;

public interface CartService extends BaseServiceInter {
	public List<Cart> findPage(int pageNow);

}
