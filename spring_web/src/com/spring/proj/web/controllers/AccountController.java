package com.spring.proj.web.controllers;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.spring.proj.web.dao.Account;
import com.spring.proj.web.dao.Cart;
import com.spring.proj.web.dao.CartInfo;
import com.spring.proj.web.service.AccountService;

@Controller
public class AccountController {
	
	private AccountService accountService;
	@Autowired
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}
    @RequestMapping("/")
	public String showHome() {
		return "e-shp";
	}
    
    @RequestMapping("/createAccount")
    public String createAccount() {
    	return "createAccount";
    }
	@RequestMapping(value="/accountCreated",method=RequestMethod.POST)
	public String createAccount(Model model,Account account) {
		account.setAuthority("user");
		account.setEnabled(1);
		accountService.createAccount(account);
		return "accountCreated";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping(value="/addCart",method=RequestMethod.POST)
	public String cart(Model model,Cart cart,Principal principal) {
		String username=principal.getName();
		cart.setUsername(username);
		accountService.addCart(cart);
		return "cart";
	}
	@RequestMapping(value="/showCart",method=RequestMethod.GET)
	public String showCart(Model model,Principal principal) {
		String username=principal.getName();
		CartInfo cartInfo = accountService.showCart(username);
		model.addAttribute("cartInfo",cartInfo);
		return "showCart";
	}
	@RequestMapping(value="/placeOrder",method=RequestMethod.GET)
	public String placeOrder(Model model,Principal principal) {
		String username=principal.getName();
		CartInfo cartInfo = accountService.showCart(username);
		Account account =accountService.showAccount(username);
		model.addAttribute("cartInfo",cartInfo);
		model.addAttribute("account",account);
		return "placeOrder";
	}
	@RequestMapping(value="/updateCart",method=RequestMethod.POST)
	public String updateCart(Model model,int quantity[],String image[],String update,Principal principal) {
		String username=principal.getName();
		if(update.equals("Update Cart")) {
		accountService.updateQuantity(quantity,image,username);
		return "e-shp";
	}
		else {
			int a=accountService.deleteItem(update);
			return "e-shp";
		}
	}
	@RequestMapping(value="/orderPlaced")
	public String orderPlaced() {
		return "orderPlaced";
	}
	

}
