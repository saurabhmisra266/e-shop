package com.spring.proj.web.dao;

import java.util.List;

import com.spring.proj.web.dao.Account;

public class CartInfo {

	private Account account;
	public CartInfo() {
	}

	List<Cart>cart;
	public List<Cart> getCart() {
		return cart;
	}
	public void setCart(List<Cart> cart) {
		this.cart = cart;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	
	
	private Cart findCart(String image) {
		for(Cart lines:this.cart) {
			if(lines.getImage().equals(image)){
				return lines;
			}
		}
		return null;
	}
	public boolean isEmpty() {
		return this.cart.isEmpty();
	}
	public int getQuantityTotal() {
		 int quantity=0;
		for(Cart cart:this.cart) {
			quantity+=cart.getQuantity();
		}
		return quantity;
	}
	
	public double getAmount() {
		double amount=0;
		for(Cart cart:this.cart) {
			amount+=cart.getPrice()*cart.getQuantity();
		}
		return amount;
	}
	
	
	
}
