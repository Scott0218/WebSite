package com.store.Model.Services;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.HiberUtil.HibernateUtil;

import Tools.MyCart;
import Tools.MyTools;
import demo.model.Members;
import demo.model.Orders;
import demo.model.OrdersDetail;
import demo.model.Products;

public class OrderServices {
	
	//新增訂單與明細，返回訂單編號
	public String submitOrder(MyCart mycart,Members members) throws InterruptedException{
		
		String oid = "";
		
		//先新增Order
		Orders o = new Orders();
		//產生流水號
		MyTools my = new MyTools();
		//訂單編號
		oid = my.getOrderNo();
		o.setOid(oid);
		o.setMid(members.getMid());
		System.out.println(members.getMid());
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		o.setSaledate(sdf.format(d));
		HibernateUtil.save(o);
		
		//取出購物車內的項目
		ArrayList<Products> al = mycart.excuteQuery();
		for(int i=0;i<al.size();i++){
			Products pd = (Products)al.get(i);
			//創建OrderDetail對象
			OrdersDetail od = new OrdersDetail();
			od.setOid(my.getOrderNo());
			System.out.println(my.getOrderNo());
			od.setName(pd.getName());
			od.setQty(1);
			od.setPrice(pd.getPrice());
			HibernateUtil.save(od);
		}
		return oid;
	}
	//查詢訂單明細，返回訂單明細資料 
	public List excuteOrderDetail(String oid){
		String hql = "from OrdersDetail where oid = ?";
		String parameters[] = {oid};
		List<OrdersDetail> list = HibernateUtil.excuteQuery(hql, parameters);
		
		return list;
	}
}
