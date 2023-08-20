package com.khue.poly.Repository;

import org.springframework.stereotype.Service;

@Service
public interface sessionLogin {
	 public Object get(String key);
	 public void set(String key, Object value);
	 public void remove(String name);
}
