package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Student;

public class StudentRowMapper2 implements RowMapper<Student>{

	@Override
	public Student mapRow(ResultSet rs, int count) throws SQLException {
		
		Student s = new Student();
		
		s.setStudent_id(rs.getString("student_id"));
		s.setStudent_name(rs.getString("student_name"));
		s.setStudent_phone(rs.getString("student_phone"));
		s.setOc_id(rs.getString("oc_id"));
		s.setCurriculum_name(rs.getString("curriculum_name"));
		s.setOc_admission_date(rs.getDate("oc_admission_date"));
		s.setOc_start_date(rs.getDate("oc_start_date"));
		s.setOc_end_date(rs.getDate("oc_end_date"));
		s.setRoom_name(rs.getString("room_name"));
		s.setStatus_(rs.getString("status_"));
		s.setEnd_date(rs.getDate("end_date"));
		s.setPossible_aband(rs.getInt("possible_aband"));
		s.setPossible_cancel(rs.getInt("possible_cancel"));
		
		return s;
	}

}



