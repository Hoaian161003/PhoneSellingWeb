package com.khue.poly.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.ManyToAny;

@Entity
@Table(name="Products")
public class Product implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;	
	private String image;
	private Double price;
	private Integer Qty;
//	@Temporal(TemporalType.DATE)
//	@Column(name="Createdate")
//	Date createDate=new Date();
	Boolean available;
	@ManyToOne
	@JoinColumn(name="Categoryid")
	Category category;
	@OneToMany(mappedBy="product")
	List<OrderDetail> orderDetails;
	
	public Product() {
		super();
	}

	
	
	
	public Integer getQty() {
		return Qty;
	}




	public void setQty(Integer qty) {
		Qty = qty;
	}




	public Product(Integer qty) {
		super();
		Qty = qty;
	}




	public Product(Integer id, String name, String image, Double price, Date createDate, Boolean available,
			Category category, List<OrderDetail> orderDetails) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.available = available;
		this.category = category;
		this.orderDetails = orderDetails;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	

	public Boolean getAvailable() {
		return available;
	}

	public void setAvailable(Boolean available) {
		this.available = available;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}
	
	
	
	
	
	

}
