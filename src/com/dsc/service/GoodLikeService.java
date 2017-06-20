package com.dsc.service;

import java.util.List;

import com.dsc.domain.Customer;
import com.dsc.domain.GoodLike;

public interface GoodLikeService extends BaseServiceInter {
	public List<GoodLike> findPageByCu(int pageNow, Customer cc);
}
