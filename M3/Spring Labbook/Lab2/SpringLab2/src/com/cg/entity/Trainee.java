package com.cg.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="Trainee")
public class Trainee {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="id")
	int id;
	
	@Column(name="name")
	String name;
	
	@Column(name="location")
	String location;
	
	@Column(name="domain")
	String domain;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	@Override
	public String toString() {
		return "Trainee [id=" + id + ", name=" + name + ", location="
				+ location + ", domain=" + domain + "]";
	}
	
	
	
	
}
