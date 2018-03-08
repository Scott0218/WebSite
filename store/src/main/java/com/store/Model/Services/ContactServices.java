package com.store.Model.Services;

import org.springframework.context.ApplicationContext;

import com.HiberUtil.HibernateUtil;
import com.spring.springUtil;

import demo.model.ContactUs;

//實作ContactInter功能
public class ContactServices implements ContactInter{
	
	//傳入字串參數
	public void Contactsave(String[] str1){
		ApplicationContext ac = springUtil.getApplicationContext();
		ContactUs cu = (ContactUs)ac.getBean("ContactUs");
		HibernateUtil.save(cu);
	}
}
