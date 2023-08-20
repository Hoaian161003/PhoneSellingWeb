package com.khue.poly.Repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.khue.poly.entity.Product;
import com.khue.poly.entity.Report;

@Repository

public interface ProductDAO extends JpaRepository<Product, Integer> {
	@Query("SELECT p FROM Product p WHERE p.price BETWEEN :minPrice AND :maxPrice")
	List<Product> findByPrice(@Param("minPrice") double minPrice, @Param("maxPrice") double maxPrice);

	
	
	@Query("SELECT p FROM Product p WHERE p.name LIKE ?1")
	Page<Product> findByKeywords(String string, Pageable pageable);

	@Query("SELECT new Report(o.category, sum(o.price), count(o)) " + " FROM Product o " + " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")

	List<Report> getInventoryByCategory();

	List<Product> findByPriceBetween(double minPrice, double maxPrice);

	Page<Product> findAllByNameLike(String keywords, Pageable pageable);



	List<Product> findAllByOrderByPriceDesc();



	List<Product> findAllByOrderByPriceAsc();




}
