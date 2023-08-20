package com.khue.poly.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.khue.poly.Repository.sessionLogin;
import com.khue.poly.entity.Account;

@Service
public class AuthInterceptor implements HandlerInterceptor {
	@Autowired
	sessionLogin session;
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler)
			throws Exception{
		
		String uri= request.getRequestURI();
		Account user= (Account) session.get("user");
		String error ="";
		if(user == null) {
			error="please login!";
		}
		else if(!user.isAdmin()&& uri.startsWith("/admin/")) {
			error="Access denied!";
		}
		if(error.length()>0) {
			session.set("security-uri", uri);
			response.sendRedirect("/account/login?error=" + error);
			return false;
		}
		return true;
		
		
	}
}
