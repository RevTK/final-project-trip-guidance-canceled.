package com.tm.mp.account;

public class AccountDTO {
	private String ac_id;
	private String ac_pw;
	private String ac_name;
	private String ac_addr;
	private String ac_like;
	private String ac_pic;
	
public AccountDTO() {
	// TODO Auto-generated constructor stub
}

public AccountDTO(String ac_id, String ac_pw, String ac_name, String ac_addr, String ac_like, String ac_pic) {
	super();
	this.ac_id = ac_id;
	this.ac_pw = ac_pw;
	this.ac_name = ac_name;
	this.ac_addr = ac_addr;
	this.ac_like = ac_like;
	this.ac_pic = ac_pic;
}

public String getAc_id() {
	return ac_id;
}

public void setAc_id(String ac_id) {
	this.ac_id = ac_id;
}

public String getAc_pw() {
	return ac_pw;
}

public void setAc_pw(String ac_pw) {
	this.ac_pw = ac_pw;
}

public String getAc_name() {
	return ac_name;
}

public void setAc_name(String ac_name) {
	this.ac_name = ac_name;
}

public String getAc_addr() {
	return ac_addr;
}

public void setAc_addr(String ac_addr) {
	this.ac_addr = ac_addr;
}

public String getAc_like() {
	return ac_like;
}

public void setAc_like(String ac_like) {
	this.ac_like = ac_like;
}

public String getAc_pic() {
	return ac_pic;
}

public void setAc_pic(String ac_pic) {
	this.ac_pic = ac_pic;
}

}
