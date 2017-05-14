


package com.Nvr.Backend;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Nvr.Backend.dao.*;
import com.Nvr.Backend.model.*;


public class ProductTest
{
   public static void main(String args[])
   {
	   AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	  context.scan("com.Nvr.Backend");
		context.refresh();
	ProductDAO productdao=(ProductDAO)context.getBean("productDao");
	  Product product=new Product();
	  product.setPid(6335);
	   product.setPname("moto");
	  product.setPrice(12000);
	  product.setStock(10);
	  product.setCatid(12);
	  product.setSuppid(45);
	  productdao.insertProduct(product);
	 // productdao.deleteProduct(2);
	  System.out.println("delete successful");
	  
	 List<Product> list= ( List<Product>)productdao.showProduct();
	 for(Product p:list)
		{
			System.out.println(p.getPid());
		}
	
		
   }
}
