package com.domain;

import java.sql.Date;

public class Admin {

	//관리자 번호, 관리자 현재 패스워드, 관리자 신규패스워드
	private String admin_id, admin_name, admin_phone;
	private Date admin_regdate;
	private String admin_pw, admin_newPw;
	private int admin_grade, admin_blind;
	

	public Admin() {
	}
	
	public Admin(String admin_id, String admin_name, String admin_phone, Date admin_regdate, int admin_blind) {
		this.admin_id = admin_id;
		this.admin_name = admin_name;
		this.admin_phone = admin_phone;
		this.admin_regdate = admin_regdate;
		this.admin_blind = admin_blind;
	}


	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}


	public String getAdmin_name() {
		return admin_name;
	}


	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}


	public String getAdmin_phone() {
		return admin_phone;
	}


	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}


	public Date getAdmin_regdate() {
		return admin_regdate;
	}


	public void setAdmin_regdate(Date admin_regdate) {
		this.admin_regdate = admin_regdate;
	}


	public String getAdmin_pw() {
		return admin_pw;
	}


	public void setAdmin_pw(String admin_pw) {
		this.admin_pw = admin_pw;
	}


	public String getAdmin_newPw() {
		return admin_newPw;
	}


	public void setAdmin_newPw(String admin_newPw) {
		this.admin_newPw = admin_newPw;
	}


	public int getAdmin_grade() {
		return admin_grade;
	}


	public void setAdmin_grade(int admin_grade) {
		this.admin_grade = admin_grade;
	}


	public int getAdmin_blind() {
		return admin_blind;
	}


	public void setAdmin_blind(int admin_blind) {
		this.admin_blind = admin_blind;
	}
	
	

}
