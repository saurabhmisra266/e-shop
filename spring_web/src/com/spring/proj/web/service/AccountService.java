package com.spring.proj.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.proj.web.dao.Account;
import com.spring.proj.web.dao.AccountDAO;
import com.spring.proj.web.dao.Cart;
import com.spring.proj.web.dao.CartDAO;
import com.spring.proj.web.dao.CartInfo;

@Service("accountService")
public class AccountService {
	
	private AccountDAO accountDao;
	private CartDAO cartDao;

	public CartDAO getCartDao() {
		return cartDao;
	}
	@Autowired
	public void setCartDao(CartDAO cartDao) {
		this.cartDao = cartDao;
	}
	@Autowired
	public void setAccountDao(AccountDAO accountDao) {
		this.accountDao = accountDao;
	}
	public void createAccount(Account account) {
		accountDao.createAccount(account);
	}
	public void addCart(Cart cart) {
	    cartDao.addCart(cart);
	}
	public CartInfo showCart(String name) {
       List<Cart> cart=cartDao.showCart(name);
       CartInfo cartInfo=new CartInfo();
       cartInfo.setCart(cart);
       return cartInfo;  
	}
	public Account showAccount(String username) {
		return accountDao.showAccount(username);
	}
	public void updateQuantity(int quantity[],String image[],String username) {
		cartDao.updateQuantity(quantity, image,username);
	}
	public int deleteItem(String image) {
		return cartDao.deleteItem(image);
	}
	
}
