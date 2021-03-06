package com.Nvr.Frontend.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Nvr.Backend.dao.CartDAO;
import com.Nvr.Backend.dao.ProductDAO;
import com.Nvr.Backend.model.Cart;

@Controller
public class CartController 
{
	@Autowired
	CartDAO cartDao;
	
	@Autowired
	ProductDAO productDao;
	
	@RequestMapping("/showCart")
	public String showCartpage(Model m,HttpSession session)
	{
		//String username=(String) session.getAttribute("username");
		List<Cart> list=cartDao.getCartItems("venki");
		m.addAttribute("items", list);
		return "Cart";
	}
}
