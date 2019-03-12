package com.domain;

import java.sql.Date;

public class Classroom {

	// 강의실 번호, 강의실 이름
	private String room_id, room_name;
	// 강의실 정원, 삭제 가능 여부
	private int room_capacity, deletable;

	private String oc_id, curriculum_name;
	private Date oc_start_date, oc_end_date;
	private int admissionCount, abandCount;
	private int abandRate, ingRate, progress;
	
	public int getAbandRate() {
		return abandRate;
	}

	public void setAbandRate(int abandRate) {
		this.abandRate = abandRate;
	}

	public int getIngRate() {
		return ingRate;
	}

	public void setIngRate(int ingRate) {
		this.ingRate = ingRate;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
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

	public int getAdmissionCount() {
		return admissionCount;
	}

	public void setAdmissionCount(int admissionCount) {
		this.admissionCount = admissionCount;
	}

	public int getAbandCount() {
		return abandCount;
	}

	public void setAbandCount(int abandCount) {
		this.abandCount = abandCount;
	}

	public String getRoom_id() {
		return room_id;
	}

	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}

	public int getRoom_capacity() {
		return room_capacity;
	}

	public void setRoom_capacity(int room_capacity) {
		this.room_capacity = room_capacity;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public int getDeletable() {
		return deletable;
	}

	public void setDeletable(int deletable) {
		this.deletable = deletable;
	}

}

