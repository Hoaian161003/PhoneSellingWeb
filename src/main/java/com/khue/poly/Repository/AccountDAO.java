package com.khue.poly.Repository;

import org.springframework.data.jpa.repository.JpaRepository;


import com.khue.poly.entity.Account;


public interface AccountDAO extends JpaRepository<Account, String>{

}
