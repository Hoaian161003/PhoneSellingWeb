package com.khue.poly.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.khue.poly.Repository.CategoryDAO;
import com.khue.poly.Repository.ProductDAO;
import com.khue.poly.entity.Category;
import com.khue.poly.entity.Product;
import com.khue.poly.service.SessionManager;
import com.khue.poly.service.SessionService;

@Controller
@RequestMapping("/product/search")
public class SearchByPriceController {
	@Autowired
	HttpServletRequest request;

	@Autowired
	CategoryDAO voanhcuoc;

	@Autowired
	SessionService session;
	@Autowired
	ProductDAO dolongdao;
	@Autowired
	SessionManager sessionn;

	@RequestMapping("/page1")
	public String getPage1() {

		return "index";
	}

	@Autowired
////đổ toàn bộ sản phẩm lên body
	@GetMapping
	public String showform(Model model) {
		List<Product> productList = dolongdao.findAll();
		model.addAttribute("products", productList);
		model.addAttribute("product", new Product());

		return "search";
	}

//////Đây là cái chính để sử lí add sản phẩm vào giỏ hàng 
	@PostMapping("/add-to-cart")
	public String addToCart(@ModelAttribute("product") Product product, Model model) {
		sessionn.addToCartOrUpdate(product);
		Set<Product> cartItems = sessionn.getCart();
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("totalPrice", totalPrice);
		return "cart";
	}

	//// cái này dùng để chuyển sang giỏ hàng khi nhấn vào icon, tại k biết fix sao
	@GetMapping("/add-to-cart")
	public String cart(@ModelAttribute("product") Product product, Model model) {

//			sessionn.addToCart(product);
		Set<Product> cartItems = sessionn.getCart();
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("totalPrice", totalPrice);
		return "cart";
	}

//xóa tất cả trong giỏ hàng
	@GetMapping("/cart/clear")
	public String clear(Model model) {
		sessionn.clearCart(request);
		List<Product> productList = dolongdao.findAll();
		model.addAttribute("product", productList);
		model.addAttribute("cartItems", sessionn.getCart());
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("totalPrice", totalPrice);
		return "cart";
	}

	// xóa sản phẩm trong giỏ hàng
	@GetMapping("cart/remove/{productId}")
	public String removeFromCart(@PathVariable("productId") Integer productId, Model model) {
		sessionn.removeFromCart(productId);
		List<Product> productList = dolongdao.findAll();
		model.addAttribute("products", productList);
		model.addAttribute("cartItems", sessionn.getCart());
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("totalPrice", totalPrice);

		return "cart";
	}

//	sản phẩm chi tiết
	@GetMapping("/product/{productId}")
	public String showProductDetail(@PathVariable("productId") Integer productId, Model model) {
		Optional<Product> productOptional = dolongdao.findById(productId);
		if (productOptional.isPresent()) {
			Product product = productOptional.get();
			model.addAttribute("product", product);

			return "productDetail";
		} else {

			return "errorPage";
		}

	}

	// chạy đến danh mục
	@GetMapping("/category/{categoryID}")
	public String Showdanhmuc(@PathVariable("categoryID") String categoryId, Model model) {
		Optional<Category> cateOptional = voanhcuoc.findById(categoryId);
		Category category = cateOptional.get();
		List<Product> products = category.getProducts();
		model.addAttribute("products", products);

		return "search";
	}

	// sắp xếp giá từ cao đến thấp
	@GetMapping("/sort-by-price")
	public String sortsort(Model model) {
		List<Product> producList = dolongdao.findAllByOrderByPriceDesc();
		model.addAttribute("products", producList);
		model.addAttribute("product", new Product());
		return "search";
	}

	// sắp xếp giá từ thấp lên cao
	@GetMapping("/sort-by-priceAsce")
	public String sortlow(Model model) {
		List<Product> productList = dolongdao.findAllByOrderByPriceAsc();
		model.addAttribute("products", productList);
		model.addAttribute("product", new Product());
		return "search";
	}

	// cập nhật số lượng giỏ hàng bằng cái nút trong bảng
	@PostMapping("cart/update/{productId}")
	public String updateCartQuantity(
			
			@PathVariable("productId") Integer productId, 
			@RequestParam("qty") Integer quantity,
			Model model) {
		sessionn.updateCartQuantity(productId, quantity);
		List<Product> productList=dolongdao.findAll();
		model.addAttribute("product", productList);
		model.addAttribute("cartItems", sessionn.getCart());
		double totalPrice = sessionn.getTotalPrice();
		model.addAttribute("totalPrice", totalPrice);
		
		return "cart";
		
		
	}

	@PostMapping
	public String search(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MAX_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		List<Product> items = dolongdao.findByPrice(minPrice, maxPrice);
		model.addAttribute("items", items);

		return "search";

	}
	@RequestMapping("search-and-page")
	public String searchAndPage(Model model,@RequestParam("keywords") Optional<String> kw,
	@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywords"));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = dolongdao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page", page);
		return "search-and-page";
	}	  

}
