package com.miracle.mp.account;

public class AccountDTO {
	private String a_id;
	private String a_pw;
	private String a_name;
	private String a_addr;
	private String a_like;
	private String a_pic;
	
public AccountDTO() {
	// TODO Auto-generated constructor stub
}

public AccountDTO(String a_id, String a_pw, String a_name, String a_addr, String a_like, String a_pic) {
	super();
	this.a_id = a_id;
	this.a_pw = a_pw;
	this.a_name = a_name;
	this.a_addr = a_addr;
	this.a_like = a_like;
	this.a_pic = a_pic;
}

public String getA_id() {
	return a_id;
}

public void setA_id(String a_id) {
	this.a_id = a_id;
}

public String getA_pw() {
	return a_pw;
}

public void setA_pw(String a_pw) {
	this.a_pw = a_pw;
}

public String getA_name() {
	return a_name;
}

public void setA_name(String a_name) {
	this.a_name = a_name;
}

public String getA_addr() {
	return a_addr;
}

public void setA_addr(String a_addr) {
	this.a_addr = a_addr;
}

public String getA_like() {
	return a_like;
}

public void setA_like(String a_like) {
	this.a_like = a_like;
}

public String getA_pic() {
	return a_pic;
}

public void setA_pic(String a_pic) {
	this.a_pic = a_pic;
}

}
