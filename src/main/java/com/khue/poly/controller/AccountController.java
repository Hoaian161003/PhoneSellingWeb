package com.khue.poly.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.khue.poly.Repository.AccountDAO;
import com.khue.poly.Repository.CategoryDAO;
import com.khue.poly.Repository.ProductDAO;
import com.khue.poly.Repository.SessionImp;
import com.khue.poly.Repository.sessionLogin;
import com.khue.poly.ServiceAccount.SessionServiceeee;
import com.khue.poly.entity.Account;
import com.khue.poly.entity.Category;
import com.khue.poly.entity.Product;
import com.khue.poly.entity.Report;
import com.khue.poly.service.SessionService;

@Controller
public class AccountController {
	@Autowired
	AccountDAO adao;
	
	@Autowired
	CategoryDAO dao;
	@Autowired
	ProductDAO proDao;
	@Autowired
	SessionImp session;
	
	@GetMapping("/account/login")
	public String login() {
		return "account/login";
	}
	@GetMapping("/account/register")
	public String Register() {
		return "account/register";
	}
	@RequestMapping("/admin/loginIndex")
	public String loginIndex(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/loginIndex";
	}
	//đăng nhập
	@RequestMapping("/category/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
	Category item = dao.findById(id).get();
	model.addAttribute("item", item);
	List<Category> items = dao.findAll();
	model.addAttribute("items", items);
	return "/admin/loginIndex";
	}
	@RequestMapping("/category/create")
	public String create(Category item) {
	if(item.getId()!="") {
		dao.save(item);
	}
	return "redirect:/admin/loginIndex";
	}
	@RequestMapping("/category/update")
	public String update(Category item) {
		dao.save(item);
		return "redirect:/category/edit/" + item.getId();
	}
	@RequestMapping("/category/delete/{id}")
	public String delete(@PathVariable("id") String id,Model model,@ModelAttribute("item")  Category ca) {
		try {
	        
	            dao.deleteById(id);
	            
	        
	    } catch (DataIntegrityViolationException e) {
	        // Xử lý lỗi khóa ngoại
	        model.addAttribute("error_message", "Cannot delete the category. It is referenced by other entities.");
	    }
	    model.addAttribute("items", dao.findAll());

	    return "/admin/loginIndex";
		    

	
	}
	//catagory
	
	@PostMapping("/account/login")
	public String login(Model model, @RequestParam("username") String username, @RequestParam("password") String password) 
	{
		
		
		try {
			Account user= adao.getOne(username);
			if(!user.getPassword().equals(password)) {
				model.addAttribute("message", "Invalid password");
			}else {
				session.set("user", user);
				String uri=(String) session.get("security-uri");
				if(uri !=null) {
					return "redirect:" +uri;
				}else {
					model.addAttribute("message","Login succeed");
					return "redirect:/product/search";
				}
			
			}
			}catch(Exception e) {
				model.addAttribute("message", "Invalid username");
			
		}
		return "/account/login";
	
	}
	//dang nhap
	@PostMapping("/account/register")
	public String create(Account item) {
	
		adao.save(item);

	return "redirect:/account/login";
	}
	//
	@GetMapping("/logout")
	public String getLogout() {
		session.remove("user");
		return "/account/login";
	}
	@Autowired
	ProductDAO pdao;
	
	@RequestMapping("admin/report/inventory-by-category")
	public String inventory(Model model) {
		List<Report> items = pdao.getInventoryByCategory();
		model.addAttribute("items", items);
		return "admin/inventory-by-category";
	}
	
	@RequestMapping("/admin/account")
	public String account(Model model) {
		Account item = new Account();
		List<Account> acc = adao.findAll();
		model.addAttribute("acc", acc);
		return "admin/account";
	}
	@RequestMapping("/account/delete/{username}")
	public String deleteAcc(@PathVariable("username") String id,Model model) {
		try {
	        
	            adao.deleteById(id);
	        
	    } catch (DataIntegrityViolationException e) {
	        // Xử lý lỗi khóa ngoại
	        model.addAttribute("error_message", "Cannot delete the category. It is referenced by other entities.");
	    }
	    model.addAttribute("acc", adao.findAll());

	    return "/admin/account";
		    

	
	}
	//product
	@GetMapping("/admin/product")
	public String Ttproduct(Model model) {
		Product item = new Product();
		model.addAttribute("prod", item);
		List<Product> items = proDao.findAll();
		List<Category> cata = dao.findAll();
		model.addAttribute("prods", items);
		model.addAttribute("cata", items);
		return "admin/product";
	}
	@GetMapping("/admin/editproduct")
	public String Ttproduc(Model model) {
		Product item = new Product();
		model.addAttribute("prod", item);
		List<Product> items = proDao.findAll();
		List<Category> cata = dao.findAll();
		model.addAttribute("prods", items);
		model.addAttribute("cata", items);
		return "admin/editProduct";
	}
	@RequestMapping("/product/edit/{id}")
	public String editp(Model model, @PathVariable("id") Integer id) {
		Product item = proDao.findById(id).get();
		model.addAttribute("prod", item);
		List<Product> items = proDao.findAll();
		List<Category> cata = dao.findAll();
		model.addAttribute("prods", items);
		model.addAttribute("cata", items);
	return "/admin/editProduct";
	}
	@RequestMapping("/product/delete/{id}")
	public String deleteProd(@PathVariable("id") Integer id,Model model) {
		try {
	        
	            proDao.deleteById(id);
	        
	    } catch (DataIntegrityViolationException e) {
	        // Xử lý lỗi khóa ngoại
	        model.addAttribute("error_message", "Cannot delete the category. It is referenced by other entities.");
	    }
	    model.addAttribute("prods", proDao.findAll());

	    return "/admin/product";
		    

	
	}
	@RequestMapping("/product/create")
	public String createprod(Product item) {
	if(item.getId()!= null) {
		proDao.save(item);
	}
	return "redirect:/admin/product";
	}
	@RequestMapping("/product/update")
	public String updateprod(Product item) {
		proDao.save(item);
		return "redirect:/product/edit/" + item.getId();
	}
	
	
	
	
	
	
	
}
