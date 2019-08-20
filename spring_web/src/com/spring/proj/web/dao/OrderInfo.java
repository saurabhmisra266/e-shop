package com.spring.proj.web.dao;

import java.util.Date;
import java.util.List;

public class OrderInfo {

	String id;
	String customerName;
	private String customerAddress;
    private String customerEmail;
    private String customerPhone;
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	Date orderDate;
	int orderNum;
	double amount;
	List<OrderDetailInfo>orderDeatail;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public List<OrderDetailInfo> getOrderDeatail() {
		return orderDeatail;
	}
	public void setOrderDeatail(List<OrderDetailInfo> orderDeatail) {
		this.orderDeatail = orderDeatail;
	};
	
	
}
