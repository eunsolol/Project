package com.domain;

import java.sql.Date;

public class Open_subject {
	
	private String oc_id, curriculum_id, curriculum_name;
	private Date oc_start_date, oc_end_date;
	private String room_id, room_name, os_id, subject_id, subject_name;
	private Date os_start_date, os_end_date;
	private String isbn, book_id, book_name, i_file_name, instructor_id, instructor_name;
	private int deletable;
	
	public String getCurriculum_id() {
		return curriculum_id;
	}

	public void setCurriculum_id(String curriculum_id) {
		this.curriculum_id = curriculum_id;
	}

	public String getRoom_id() {
		return room_id;
	}

	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}

	public String getSubject_id() {
		return subject_id;
	}

	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}

	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}

	public String getInstructor_id() {
		return instructor_id;
	}

	public void setInstructor_id(String instructor_id) {
		this.instructor_id = instructor_id;
	}
	
	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getI_file_name() {
		return i_file_name;
	}

	public void setI_file_name(String i_file_name) {
		this.i_file_name = i_file_name;
	}

	public String getOc_id() {
		return oc_id;
	}

	public void setOc_id(String oc_id) {
		this.oc_id = oc_id;
	}

	public String getCurriculum_name() {
		return curriculum_name;
	}

	public void setCurriculum_name(String curriculum_name) {
		this.curriculum_name = curriculum_name;
	}

	public Date getOc_start_date() {
		return oc_start_date;
	}

	public void setOc_start_date(Date oc_start_date) {
		this.oc_start_date = oc_start_date;
	}

	public Date getOc_end_date() {
		return oc_end_date;
	}

	public void setOc_end_date(Date oc_end_date) {
		this.oc_end_date = oc_end_date;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getOs_id() {
		return os_id;
	}

	public void setOs_id(String os_id) {
		this.os_id = os_id;
	}

	public String getSubject_name() {
		return subject_name;
	}

	public void setSubject_name(String subject_name) {
		this.subject_name = subject_name;
	}

	public Date getOs_start_date() {
		return os_start_date;
	}

	public void setOs_start_date(Date os_start_date) {
		this.os_start_date = os_start_date;
	}

	public Date getOs_end_date() {
		return os_end_date;
	}

	public void setOs_end_date(Date os_end_date) {
		this.os_end_date = os_end_date;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getInstructor_name() {
		return instructor_name;
	}

	public void setInstructor_name(String instructor_name) {
		this.instructor_name = instructor_name;
	}

	public int getDeletable() {
		return deletable;
	}

	public void setDeletable(int deletable) {
		this.deletable = deletable;
	}
	
}
