package com.domain;

import java.sql.Date;

public class Notice {

	private String notice_id, admin_id, content;
	private Date notice_regdate;
	
	
	public Notice() {
	}
	
	public String getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(String notice_id) {
		this.notice_id = notice_id;
	}
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getNotice_regdate() {
		return notice_regdate;
	}
	public void setNotice_regdate(Date notice_regdate) {
		this.notice_regdate = notice_regdate;
	}
}
