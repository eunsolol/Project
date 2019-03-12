package com.domain;

public class Subject {

	//?¨ì‡°?‰è¸°ëŠ?ƒ‡, ?¨ì‡°?‰ï§ï¿½
	private String subject_id, subject_name;
	//ï¿½ê¶˜ï¿½ì £åª›ï¿½ï¿½ë’«ï¿½ë¿¬?ºï¿?
	private int deletable;

	public Subject() {
		
	}

	public String getSubject_id() {
		return subject_id;
	}

	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}

	public String getSubject_name() {
		return subject_name;
	}

	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}

	public int getDeletable() {
		return deletable;
	}

	public void setDeletable(int deletable) {
		this.deletable = deletable;
	}

}
