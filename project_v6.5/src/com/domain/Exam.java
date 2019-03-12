package com.domain;

import java.sql.Date;

public class Exam {

	private String oc_id, ex_id, grade_id, os_id, subject_name, instructor_name, i_file_name, book_name, isbn, question;

	private int absence_point, writtenExam_point, practical_point;
	private int absence_grade, writtenExam_grade, practical_grade, total;
	private Date os_start_date, os_end_date, ex_date, end_date;
	private String student_id, student_name, student_phone, s_pid, s_file_name, status_;
	private String instructor_id;
	private Date aband_date;
	
	
	public String getOc_id() {
		return oc_id;
	}
	
	public void setOc_id(String oc_id) {
		this.oc_id = oc_id;
	}
	
	public String getInstructor_id() {
		return instructor_id;
	}

	public void setInstructor_id(String instructor_id) {
		this.instructor_id = instructor_id;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getI_file_name() {
		return i_file_name;
	}
	
	public void setI_file_name(String i_file_name) {
		this.i_file_name = i_file_name;
	}
	
	public String getIsbn() {
		return isbn;
	}
	
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	public String getStatus_() {
		return status_;
	}
	
	public void setStatus_(String status_) {
		this.status_ = status_;
	}

	public String getS_pid() {
		return s_pid;
	}

	public void setS_pid(String s_pid) {
		this.s_pid = s_pid;
	}

	public String getS_file_name() {
		return s_file_name;
	}

	public void setS_file_name(String s_file_name) {
		this.s_file_name = s_file_name;
	}

	public String getGrade_id() {
		return grade_id;
	}

	public void setGrade_id(String grade_id) {
		this.grade_id = grade_id;
	}
	
	public String getEx_id() {
		return ex_id;
	}

	public void setEx_id(String ex_id) {
		this.ex_id = ex_id;
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

	public String getInstructor_name() {
		return instructor_name;
	}

	public void setInstructor_name(String instructor_name) {
		this.instructor_name = instructor_name;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public int getAbsence_point() {
		return absence_point;
	}

	public void setAbsence_point(int absence_point) {
		this.absence_point = absence_point;
	}

	public int getWrittenExam_point() {
		return writtenExam_point;
	}

	public void setWrittenExam_point(int writtenExam_point) {
		this.writtenExam_point = writtenExam_point;
	}

	public int getPractical_point() {
		return practical_point;
	}

	public void setPractical_point(int practical_point) {
		this.practical_point = practical_point;
	}

	public int getAbsence_grade() {
		return absence_grade;
	}

	public void setAbsence_grade(int absence_grade) {
		this.absence_grade = absence_grade;
	}

	public int getWrittenExam_grade() {
		return writtenExam_grade;
	}

	public void setWrittenExam_grade(int writtenExam_grade) {
		this.writtenExam_grade = writtenExam_grade;
	}

	public int getPractical_grade() {
		return practical_grade;
	}

	public void setPractical_grade(int practical_grade) {
		this.practical_grade = practical_grade;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
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

	public String getStudent_id() {
		return student_id;
	}

	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getStudent_phone() {
		return student_phone;
	}

	public void setStudent_phone(String student_phone) {
		this.student_phone = student_phone;
	}

	public String getstatus_() {
		return status_;
	}

	public void setstatus_(String status_) {
		this.status_ = status_;
	}

	public Date getAband_date() {
		return aband_date;
	}

	public void setAband_date(Date aband_date) {
		this.aband_date = aband_date;
	}
	
}