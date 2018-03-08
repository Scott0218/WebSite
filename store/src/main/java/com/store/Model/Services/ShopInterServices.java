package com.store.Model.Services;

import java.util.List;

import demo.model.Products;

/*
 * 購物介面
 */
public interface ShopInterServices {
	//依照ID查詢
	public List<Products> check(String hql,String[] parameters);
	
	
}
