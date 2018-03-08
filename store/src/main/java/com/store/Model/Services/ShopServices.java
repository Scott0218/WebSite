package com.store.Model.Services;

import java.util.List;

import com.HiberUtil.HibernateUtil;

import demo.model.Products;

public class ShopServices implements ShopInterServices{

	@Override
	public List<Products> check(String hql, String[] parameters) {
		List list =HibernateUtil.excuteQuery(hql, parameters);
		return list;
	}
	
}
