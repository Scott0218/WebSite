package Tools;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import demo.model.Products;

//儲存購物車內容
public class MyCart {
	HashMap<String,Products> hm = new HashMap<String,Products>();
	
	private ArrayList<Products> al = null;
	
	//添加
	public void addProduct(String id,Products pro){
		hm.put(id,pro);
	}
	//更新
	
	//刪除
	public void deleteProduct(String id){
		hm.remove(id);
	}
	
	//清空所有項目
	public void deleteAll(){
		al.clear();
	}
	//查詢底下所有的項目
	public ArrayList<Products> excuteQuery(){
		al = new ArrayList<Products>();
		
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
	//計算商品總價格
	public String getTotalPrice(){
		String totalPrice = "";
		float sum = 0.0f;
		//取得總價格
		ArrayList<Products> al = new ArrayList<Products>();
		Iterator it = hm.keySet().iterator();
		while(it.hasNext()){
			//取得此id
			String id = (String)it.next();
			//取得此Products資料
			Products pd = hm.get(id);
			
			DecimalFormat priceFormat = new DecimalFormat("#.00");
			sum += (pd.getPrice()*pd.getShoppingNum());
			totalPrice = priceFormat.format(sum);
		}
		
		return totalPrice;
	}
}
