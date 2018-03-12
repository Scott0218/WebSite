package com.store.Model.Services;
/*
 * 實作UserInterServices(人員基本功能)介面
 */

import java.util.List;

import org.springframework.context.ApplicationContext;

import com.HiberUtil.HibernateUtil;
import com.spring.springUtil;

import Tools.MyTools;
import demo.model.Members;

public class UserServices implements UserInterServices {
	//實作驗證功能
	@Override
	public Members checkUser(String id,String pwd) {
		String hql = "from Members where mid = ? and pwd = ?";
		String parameters[] = {id,pwd};
		List<Members> list = HibernateUtil.excuteQuery(hql,parameters);
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
		}
	}

	@Override
	public void addMembers(String mid,String pwd,String name,int Uage,String addr,String tel,String email) {
		ApplicationContext ac = springUtil.getApplicationContext();
		Members mb = (Members) ac.getBean("Members");
		
		MyTools tools =  new MyTools();
		//帳號
		mb.setMid(mid);
		//密碼
		mb.setPwd(tools.md5(pwd));
		//地址
		mb.setAddr(addr);
		//姓名
		mb.setName(name);
		//年齡
		mb.setAge(Uage);
		//地址
		mb.setEmail(email);
		//電話
		mb.setTel(tel);
		//Email
		mb.setEmail(email);	
		
		HibernateUtil.save(mb);
	}

	@Override
	public List check(String hql, String[] parameters) {
		List list = HibernateUtil.excuteQuery(hql, parameters);
		return list;
	}
		
	
}
