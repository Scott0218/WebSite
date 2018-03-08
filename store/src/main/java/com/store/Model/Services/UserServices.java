package com.store.Model.Services;
/*
 * 實作UserInterServices(人員基本功能)介面
 */

import java.util.List;

import com.HiberUtil.HibernateUtil;

public class UserServices implements UserInterServices {
	//實作驗證功能
	@Override
	public List check(String hql, String[] parameters) {
		List list =HibernateUtil.excuteQuery(hql, parameters);
		return list;
	}
}
