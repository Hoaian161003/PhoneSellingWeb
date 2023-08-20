package com.khue.poly.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Report {
	@Id
	 Serializable group;
	 Double sum;
	 Long count;
	 
	 
	public Report() {
		super();
	}


	public Report(Serializable group, Double sum, Long count) {
		super();
		this.group = group;
		this.sum = sum;
		this.count = count;
	}


	public Serializable getGroup() {
		return group;
	}


	public void setGroup(Serializable group) {
		this.group = group;
	}


	public Double getSum() {
		return sum;
	}


	public void setSum(Double sum) {
		this.sum = sum;
	}


	public Long getCount() {
		return count;
	}


	public void setCount(Long count) {
		this.count = count;
	}



}
