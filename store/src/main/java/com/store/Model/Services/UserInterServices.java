package com.store.Model.Services;

import java.util.List;

/*
 * 定義人員基本功能介面
 */
public interface UserInterServices {
//帳號密碼驗證
	public List check(String hql,String []parameters);
}
