package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Instructor;

// 강의 ?���?�? 목록
public class InstructorRowMapper3 implements RowMapper<Instructor>{
/*	String instructor_id, String instructor_name, String instructor_phone, String room_id,
	String book_name, String os_id, String subject_name, String question, String status, String curriculum_name,
	String possible_course, String instructor_pw, String instructor_new_pw, Date instructor_regdate,
	Date oc_start_date, Date oc_end_date, Date os_start_date, Date os_end_date, Date ex_date, int absence_grade,
	int writtenexam_grade, int practical_grade, int deletable, int instructor_possible,
	String instructor_status*/
	@Override
	public Instructor mapRow(ResultSet rs, int count) throws SQLException {
		Instructor i = new Instructor();
		i.setOs_id(rs.getString("os_id"));
		i.setSubject_name(rs.getString("subject_name"));
		i.setBook_name(rs.getString("book_name"));
		i.setIsbn(rs.getString("isbn"));
		i.setOs_start_date(rs.getDate("os_start_date"));
		i.setOs_end_date(rs.getDate("os_end_date"));
		i.setStatus(rs.getString("status"));
		return i;
	}
	

}
