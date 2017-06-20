package com.dsc.service;

import java.util.List;

import com.dsc.domain.Good;

public interface GoodService extends BaseServiceInter {
	public List<Good> findPage(int pageNow);
}
