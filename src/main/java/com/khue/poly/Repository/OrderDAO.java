package com.khue.poly.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.khue.poly.entity.Order;



public interface OrderDAO extends JpaRepository<Order, Long>{

}