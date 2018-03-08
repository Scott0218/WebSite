package com.HiberUtil;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

/*
 * DAO類別
 */
public class HibernateUtil {
	private static SessionFactory sessionfactory = null;
	// 線程模式
	private static ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();

	private HibernateUtil() {
	};

	static {
		sessionfactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	}

	// 取得一個全新的Session方法
	public static Session openSession() {
		return sessionfactory.openSession();
	}

	// 將Session與線程綁定
	public static Session getCurrentSession() {
		Session session = threadLocal.get();
		// 如果沒有獲取到
		if (session == null) {
			session = sessionfactory.openSession();
			threadLocal.set(session);
		}
		return session;
	}

	// 提供一個統一的查詢方法
	public static List excuteQuery(String hql, String[] parameters) {
		Session s = null;
		List list = null;

		try {
			s = openSession();
			Query query = s.createQuery(hql);
			// 判斷有無參數綁定
			if (parameters != null && parameters.length > 0) {
				for (int i = 0; i < parameters.length; i++) {
					query.setParameter(i, parameters[i]);
				}
			}

			list = query.list();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		} finally {
			if (s != null && s.isOpen()) {
				s.close();
			}
		}

		return list;
	}
	//提供一個統一的修改、刪除方法
	public static void update(){
		
	}
	//新增方法
	public static void save(Object obj){
		Session s = null;
		Transaction tx = null;
		
		try{
			s = openSession();
			s.save(obj);
			tx = s.beginTransaction();
			tx.commit();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}finally{
			if(s!=null&&s.isOpen()){
				s.close();
			}
		}
	}
}
