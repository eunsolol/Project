package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Instructor;

// ?���?
public class InstructorRowMapper implements RowMapper<Instructor>{
/*	String instructor_id, String instructor_name, String instructor_phone, String room_id,
	String book_name, String os_id, String subject_name, String question, String status, String curriculum_name,
	String possible_course, String instructor_pw, String instructor_new_pw, Date instructor_regdate,
	Date oc_start_date, Date oc_end_date, Date os_start_date, Date os_end_date, Date ex_date, int absence_grade,
	int writtenexam_grade, int practical_grade, int deletable, int instructor_possible,
	String instructor_status*/
	@Override
	public Instructor mapRow(ResultSet rs, int count) throws SQLException {
		Instructor i = new Instructor();
		i.setInstructor_id(rs.getString("instructor_id"));
		i.setInstructor_name(rs.getString("instructor_name"));
		i.setInstructor_phone(rs.getString("instructor_phone"));
		i.setRoom_id(rs.getString("room_id"));
		i.setBook_name(rs.getString("book_name"));
		i.setOs_id(rs.getString("os_id"));
		i.setSubject_name(rs.getString("subject_name"));
		i.setQuestion(rs.getString("question"));
		i.setStatus(rs.getString("status"));
		i.setCurriculum_name(rs.getString("curriculum_name"));
		i.setPossible_course(rs.getString("possible_course"));
		i.setInstructor_pw(rs.getString("instructor_pw"));
		i.setInstructor_new_pw(rs.getString("instructor_new_pw"));
		i.setInstructor_regdate(rs.getDate("instructor_regdate"));
		i.setOc_start_date(rs.getDate("oc_start_date"));
		i.setOc_end_date(rs.getDate("oc_end_date"));
		i.setOs_start_date(rs.getDate("os_start_date"));
		i.setOs_end_date(rs.getDate("os_end_date"));
		i.setEx_date(rs.getDate("ex_date"));
		i.setAbsence_grade(rs.getInt("absence_grade"));
		i.setWrittenexam_grade(rs.getInt("writtenexam_grade"));
		i.setPractical_grade(rs.getInt("practical_grade"));
		i.setDeletable(rs.getInt("deletable"));
		i.setInstructor_possible(rs.getInt("instructor_possible"));
		i.setInstructor_status(rs.getString("instructor_status"));
		
		return i;
	}
	

}
