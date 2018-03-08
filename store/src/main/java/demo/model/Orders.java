package demo.model;
// Generated 2018/2/24 �U�� 03:37:29 by Hibernate Tools 3.5.0.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Orders generated by hbm2java
 */
public class Orders implements java.io.Serializable {

	private String oid;
	private String mid;
	private Date saledate;
	private Members members;
	
	private Set<OrdersDetail> OrdersDetail = new HashSet<OrdersDetail>(0);
	

	

	public Set<OrdersDetail> getOrdersDetail() {
		return OrdersDetail;
	}

	public void setOrdersDetail(Set<OrdersDetail> ordersDetail) {
		OrdersDetail = ordersDetail;
	}

	public Members getMembers() {
		return members;
	}

	public void setMembers(Members members) {
		this.members = members;
	}

	public Orders() {
	}

	public Orders(String oid, Date saledate) {
		this.oid = oid;
		this.saledate = saledate;
	}

	public Orders(String oid, String mid, Date saledate) {
		this.oid = oid;
		this.mid = mid;
		this.saledate = saledate;
	}

	public String getOid() {
		return this.oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public String getMid() {
		return this.mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public Date getSaledate() {
		return this.saledate;
	}

	public void setSaledate(Date saledate) {
		this.saledate = saledate;
	}

}
