package com.khue.poly.Repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.khue.poly.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, String>{


}
