package com.spring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

final public class springUtil {
	
	private static ApplicationContext ac = null;
	
	private springUtil(){
		
	}
	static {
		ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	}
	public static ApplicationContext getApplicationContext(){
		return ac;
	}
}
