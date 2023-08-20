package com.khue.poly.Repository;

import org.springframework.data.jpa.repository.JpaRepository;


import com.khue.poly.entity.OrderDetail;


public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long> {

}
