package com.domain;

import java.sql.Date;

public class Student {
	//������ ��ȣ, ������ �̸�, ������ ��ȭ��ȣ, ������ ��й�ȣ, ������ �ű� ��й�ȣ
	private String student_id, student_name, student_phone, student_pw, newStudent_pw, student_addr, student_email;
	//������ �����, ����(����)/�ߵ�Ż����
	private Date student_regdate, aband_date;
	//����Ƚ��(���� ��û�� ���� ����), ���� ���� ����
	private int oc_admission_count, s_count;
	//����(����)/�ߵ�Ż��, ���� ���� ��ȣ, ������, ���ǽ�
	private String aband, oc_id, curriculum_name, room_name;
	//���� ������, ���� ������
	private Date oc_start_date, oc_end_date, end_date, oc_admission_date;
	//�������
	private String s_pid, s_file_name, status_;
	
	private int possible_aband, possible_cancel;
	
	
	public int getPossible_aband() {
		return possible_aband;
	}

	public void setPossible_aband(int possible_aband) {
		this.possible_aband = possible_aband;
	}

	public int getPossible_cancel() {
		return possible_cancel;
	}

	public void setPossible_cancel(int possible_cancel) {
		this.possible_cancel = possible_cancel;
	}

	public Date getOc_admission_date() {
		return oc_admission_date;
	}

	public void setOc_admission_date(Date oc_admission_date) {
		this.oc_admission_date = oc_admission_date;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public String getStatus_() {
		return status_;
	}

	public void setStatus_(String status_) {
		this.status_ = status_;
	}

	public String getStudent_email() {
		return student_email;
	}

	public void setStudent_email(String student_email) {
		this.student_email = student_email;
	}

	public String getStudent_addr() {
		return student_addr;
	}
	
	public void setStudent_addr(String student_addr) {
		this.student_addr = student_addr;
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

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
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

	public String getStudent_pw() {
		return student_pw;
	}

	public void setStudent_pw(String student_pw) {
		this.student_pw = student_pw;
	}

	public Date getStudent_regdate() {
		return student_regdate;
	}

	public void setStudent_regdate(Date student_regdate) {
		this.student_regdate = student_regdate;
	}

	public Date getAband_date() {
		return aband_date;
	}

	public void setAband_date(Date aband_date) {
		this.aband_date = aband_date;
	}

	public int getOc_admission_count() {
		return oc_admission_count;
	}

	public void setOc_admission_count(int oc_admission_count) {
		this.oc_admission_count = oc_admission_count;
	}

	public String getAband() {
		return aband;
	}

	public void setAband(String aband) {
		this.aband = aband;
	}

	public int getS_count() {
		return s_count;
	}

	public void setS_count(int s_count) {
		this.s_count = s_count;
	}

	public String getNewStudent_pw() {
		return newStudent_pw;
	}

	public void setNewStudent_pw(String newStudent_pw) {
		this.newStudent_pw = newStudent_pw;
	}
	
	public String getS_file_name() {
		return s_file_name;
	}

	public void setS_file_name(String s_file_name) {
		this.s_file_name = s_file_name;
	}

	public String getS_pid() {
		return s_pid;
	}

	public void setS_pid(String s_pid) {
		this.s_pid = s_pid;
	}
}
