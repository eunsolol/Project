package com.domain;

import java.sql.Date;

// 개설과정
public class Open_curriculum {

	// asstatus 강의상태, ocstatus 과정진행상태
	// studentCnt 수강생 등록인원, deletable 삭제가능여부, status 수강생 수료상태
	private String oc_id, curriculum_id, curriculum_name, room_id, room_name, status, ocstatus;
	private Date oc_start_date, oc_end_date, aband_date, oc_admission_date;
	private int studentCnt, subjectCnt, deletable, room_capacity;

	public Open_curriculum() {

	}
	
	public String getOc_id() {
		return oc_id;
	}

	public void setOc_id(String oc_id) {
		this.oc_id = oc_id;
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

	public String getRoom_id() {
		return room_id;
	}

	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getOcstatus() {
		return ocstatus;
	}

	public void setOcstatus(String ocstatus) {
		this.ocstatus = ocstatus;
	}

	public Date getOc_admission_date() {
		return oc_admission_date;
	}

	public void setOc_admission_date(Date oc_admission_date) {
		this.oc_admission_date = oc_admission_date;
	}

	public int getDeletable() {
		return deletable;
	}

	public void setDeletable(int deletable) {
		this.deletable = deletable;
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

	public int getStudentCnt() {
		return studentCnt;
	}

	public void setStudentCnt(int studentCnt) {
		this.studentCnt = studentCnt;
	}

	public int getSubjectCnt() {
		return subjectCnt;
	}

	public void setSubjectCnt(int subjectCnt) {
		this.subjectCnt = subjectCnt;
	}

	public Date getAband_date() {
		return aband_date;
	}

	public void setAband_date(Date aband_date) {
		this.aband_date = aband_date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getRoom_capacity() {
		return room_capacity;
	}

	public void setRoom_capacity(int room_capacity) {
		this.room_capacity = room_capacity;
	}



}
