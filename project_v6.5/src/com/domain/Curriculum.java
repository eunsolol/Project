package com.domain;

public class Curriculum {

	//?¨ì‡±? ™è¸°ëŠ?ƒ‡, ?¨ì‡±? ™ï§ï¿½
	private String curriculum_id, curriculum_name;
	//ï¿½ê¶˜ï¿½ì £åª›ï¿½ï¿½ë’«ï¿½ë¿¬?ºï¿?
	private int deletable;

	public Curriculum() {
		
	}

	public String getCurriculum_id() {
		return curriculum_id;
	}

	public void setCurriculum_id(String curriculum_id) {
		this.curriculum_id = curriculum_id;
	}

	public String getCurriculum_name() {
		return curriculum_name;
	}

	public void setCurriculum_name(String curriculum_name) {
		this.curriculum_name = curriculum_name;
	}

	public int getDeletable() {
		return deletable;
	}

	public void setDeletable(int deletable) {
		this.deletable = deletable;
	}

}
