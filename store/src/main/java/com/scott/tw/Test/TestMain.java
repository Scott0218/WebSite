package com.scott.tw.Test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import demo.model.ContactUs;


/*
 * 測試區塊
 */
public class TestMain {

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ContactUs cu = (ContactUs)ac.getBean("ContactUs");
		
	}
	
	
}
