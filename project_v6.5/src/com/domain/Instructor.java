package com.domain;

import java.sql.Date;

public class Instructor {
	
	private String instructor_id, instructor_name, instructor_phone, instructor_email, instructor_addr, i_pid, i_file_name; //강사번호, 강사명, 강사전화번호, 이메일, 주소
	private String room_id, book_name, isbn; //강의실, 교재명
	private String os_id, subject_name; //개설과목번호, 과목명 
	private String question, status; //시험문제, 강의상태
	private String curriculum_name; //개설과정명
	private String possible_course; // 강의가능 과목 리스트
	private String[] pc_check; // 강의가능 과목 리스트
	private String instructor_pw, instructor_new_pw; //(기존)비밀번호, 새 비밀번호
	private Date os_start_date, os_end_date; //과목 시작일, 과목 종료일
	private Date ex_date;
	
	private int absence_grade, writtenexam_grade, practical_grade; //출결배점, 필기배점, 실기배점
	private int deletable, instructor_possible; //삭제 가능 여부, 강의 가능 여부
	private String instructor_status; // 강의진행여부

	private Date instructor_regdate, oc_start_date, oc_end_date; //등록일, 과정시작일, 과정종료일
	
	public Instructor() {
		
	}

	public String getInstructor_id() {
		return instructor_id;
	}

	public void setInstructor_id(String instructor_id) {
		this.instructor_id = instructor_id;
	}

	public String getInstructor_name() {
		return instructor_name;
	}

	public void setInstructor_name(String instructor_name) {
		this.instructor_name = instructor_name;
	}

	public String getInstructor_phone() {
		return instructor_phone;
	}

	public void setInstructor_phone(String instructor_phone) {
		this.instructor_phone = instructor_phone;
	}

	public String getInstructor_email() {
		return instructor_email;
	}

	public void setInstructor_email(String instructor_email) {
		this.instructor_email = instructor_email;
	}

	public String getInstructor_addr() {
		return instructor_addr;
	}

	public void setInstructor_addr(String instructor_addr) {
		this.instructor_addr = instructor_addr;
	}

	public String getI_file_name() {
		return i_file_name;
	}

	public void setI_file_name(String i_file_name) {
		this.i_file_name = i_file_name;
	}
	public String getI_pid() {
		return i_pid;
	}
	
	public void setI_pid(String i_pid) {
		this.i_pid = i_pid;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getRoom_id() {
		return room_id;
	}

	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
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

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCurriculum_name() {
		return curriculum_name;
	}

	public void setCurriculum_name(String curriculum_name) {
		this.curriculum_name = curriculum_name;
	}

	public String getInstructor_pw() {
		return instructor_pw;
	}

	public void setInstructor_pw(String instructor_pw) {
		this.instructor_pw = instructor_pw;
	}

	public String getInstructor_new_pw() {
		return instructor_new_pw;
	}

	public void setInstructor_new_pw(String instructor_new_pw) {
		this.instructor_new_pw = instructor_new_pw;
	}

	public Date getInstructor_regdate() {
		return instructor_regdate;
	}

	public void setInstructor_regdate(Date instructor_regdate) {
		this.instructor_regdate = instructor_regdate;
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

	public Date getEx_date() {
		return ex_date;
	}

	public void setEx_date(Date ex_date) {
		this.ex_date = ex_date;
	}

	public int getAbsence_grade() {
		return absence_grade;
	}

	public void setAbsence_grade(int absence_grade) {
		this.absence_grade = absence_grade;
	}

	public int getWrittenexam_grade() {
		return writtenexam_grade;
	}

	public void setWrittenexam_grade(int writtenexam_grade) {
		this.writtenexam_grade = writtenexam_grade;
	}

	public int getPractical_grade() {
		return practical_grade;
	}

	public void setPractical_grade(int practical_grade) {
		this.practical_grade = practical_grade;
	}

	public int getDeletable() {
		return deletable;
	}

	public void setDeletable(int deletable) {
		this.deletable = deletable;
	}

	public int getInstructor_possible() {
		return instructor_possible;
	}

	public void setInstructor_possible(int instructor_possible) {
		this.instructor_possible = instructor_possible;
	}

	public String getPossible_course() {
		return possible_course;
	}

	public void setPossible_course(String possible_course) {
		this.possible_course = possible_course;
	}


	public String getInstructor_status() {
		return instructor_status;
	}

	public void setInstructor_status(String instructor_status) {
		this.instructor_status = instructor_status;
	}

	public String[] getPc_check() {
		return pc_check;
	}

	public void setPc_check(String[] pc_check) {
		this.pc_check = pc_check;
	}




}
