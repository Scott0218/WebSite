package demo.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

//儲存購物車內容
public class MyCart {
	HashMap<String,Products> hm = new HashMap<String,Products>();
	
	//添加
	public void addProduct(String id,Products pro){
		hm.put(id,pro);
	}
	//更新
	
	//刪除
	public void delete(String id){
		hm.remove(id);
	}
	//查詢
	public ArrayList<Products> excuteQuery(){
		ArrayList<Products> al = new ArrayList<Products>();
		
		Iterator it = hm.keySet().iterator(); 
        while(it.hasNext()){
        	//取得key值
        	String id =(String)it.next();
        	//取得Products資料
        	Products pd = hm.get(id);
        	al.add(pd);
        }
		return al;
	}
}
