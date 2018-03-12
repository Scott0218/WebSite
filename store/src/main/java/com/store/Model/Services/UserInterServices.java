package com.store.Model.Services;

import java.util.List;

import demo.model.Members;
/*
 * 定義人員基本功能介面
 */
public interface UserInterServices {
	//返回用戶資料
	public Members checkUser(String id,String pwd);
	//添加會員
	public void addMembers(String mid,String pwd,String name,int Uage,String addr,String tel,String email);
	//查詢通用
	public List check(String hql,String parameters[]);
}

