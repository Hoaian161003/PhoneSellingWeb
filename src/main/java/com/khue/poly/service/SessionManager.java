package com.khue.poly.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khue.poly.entity.Product;

@Service
public class SessionManager {
    private static final String SESSION_CART_KEY = "cart";

    @Autowired
    private HttpSession session;

    public void addToCartOrUpdate(Product product) {
        Set<Product> cart = getCart();
        boolean isProductExists = false;

        for (Product item : cart) {
            if (item.getId() == product.getId()) {
                // Sản phẩm đã tồn tại trong giỏ hàng, tăng số lượng lên và cập nhật
                item.setQty(item.getQty() + 1);
                isProductExists = true;
                break;
            }
        }

        if (!isProductExists) {
            // Sản phẩm chưa tồn tại trong giỏ hàng, thêm vào giỏ hàng
            product.setQty(1);
            cart.add(product);
        }

        session.setAttribute(SESSION_CART_KEY, cart);
        
    }
    //tính tổng giá 
    public double getTotalPrice() {
        Set<Product> cart = getCart();
        double totalPrice = 0;
        for (Product product : cart) {
            int quantity = product.getQty();
            double price = product.getPrice();
            if (price > 0) {
                totalPrice += price * quantity;
            }
        }
        return totalPrice;
    }

    public Set<Product> getCart() {
        Set<Product> cart = (Set<Product>) session.getAttribute(SESSION_CART_KEY);
        if (cart == null) {
            cart = new HashSet<>();
            session.setAttribute(SESSION_CART_KEY, cart);
        }
        return cart;
    }
    //xóa sản phẩm khỏi giỏ hàng, hoặc giảm số lượng
    public void removeFromCart(long productId) {
        Set<Product> cart = getCart();
        
        for (Product product : cart) {
            if (product.getId() == productId && product.getQty() >= 2) {
                // Nếu số lượng sản phẩm lớn hơn hoặc bằng 2, giảm số lượng đi 1
                product.setQty(product.getQty() - 1);
                break;
            } else if (product.getId() == productId && product.getQty() == 1) {
                // Nếu số lượng sản phẩm là 1, xóa sản phẩm khỏi giỏ hàng
                cart.remove(product);
                break;
            }
        }

        session.setAttribute(SESSION_CART_KEY, cart);
    }
// phương này này sử dungj để tăng và giảm số lượng trong giỏ hàng 
    public void updateCartQuantity(long productId, int quantity) {
    	if(quantity <0) {
    		quantity =1;
    	}
    	
    	Set<Product> cart = getCart();
    	
    	for(Product product : cart) {
    		if(product.getId()==productId) {
    			
    			product.setQty(quantity);
    			break;
    		}
    	}
    	session.setAttribute(SESSION_CART_KEY, cart);
    }

    public static List<Product> getCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        List<Product> cart = (List<Product>) session.getAttribute(SESSION_CART_KEY);

        if (cart == null) {
            cart = new ArrayList<>();
        }

        return cart;
    }

    public static void clearCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute(SESSION_CART_KEY);
    }
}
