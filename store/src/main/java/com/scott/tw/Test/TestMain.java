package com.scott.tw.Test;

import com.store.Model.Services.UserInterServices;
import com.store.Model.Services.UserServices;

import Tools.MyTools;
import demo.model.Members;




/*
 * 測試區塊
 */
public class TestMain extends Thread {

	public static void main(String[] args) throws InterruptedException {  
		
		/*UserInterServices uis = new UserServices();
		MyTools tools = new MyTools();
		String id = "m0001";
		String pwd = "m0001";
		String upwd = tools.md5(pwd);
		Members mb = uis.checkUser(id,upwd);
		System.out.println(mb.getMid());*/
		MyTools mytools = new MyTools();
		String num = mytools.getOrderNo();
		System.out.println(num);
	}  
	  
}
