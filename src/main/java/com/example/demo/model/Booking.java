package com.example.demo.model;

import javax.persistence.Entity; 
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="couriertable")
public class Booking {
	@Id
	private String id;
	private String method;
	private String item;
	private String name;
	private String email;
	private String saddress;
	private String scity;
	private String sstate;
	private String spincode;
	private String raddress;
	private String rcity;
	private String rstate;
	private String rpincode;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSaddress() {
		return saddress;
	}
	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}
	public String getScity() {
		return scity;
	}
	public void setScity(String scity) {
		this.scity = scity;
	}
	public String getSstate() {
		return sstate;
	}
	public void setSstate(String sstate) {
		this.sstate = sstate;
	}
	public String getSpincode() {
		return spincode;
	}
	public void setSpincode(String spincode) {
		this.spincode = spincode;
	}
	public String getRaddress() {
		return raddress;
	}
	public void setRaddress(String raddress) {
		this.raddress = raddress;
	}
	public String getRcity() {
		return rcity;
	}
	public void setRcity(String rcity) {
		this.rcity = rcity;
	}
	public String getRstate() {
		return rstate;
	}
	public void setRstate(String rstate) {
		this.rstate = rstate;
	}
	public String getRpincode() {
		return rpincode;
	}
	public void setRpincode(String rpincode) {
		this.rpincode = rpincode;
	}
	
	
	
	
}
