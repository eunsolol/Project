package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Student;

public class StudentRowMapper implements RowMapper<Student>{

	@Override
	public Student mapRow(ResultSet rs, int count) throws SQLException {
		
		Student s = new Student();
		
		s.setStudent_id(rs.getString("student_id"));
		s.setStudent_name(rs.getString("student_name"));
		s.setS_pid(rs.getString("s_pid"));
		s.setS_file_name(rs.getString("s_file_name"));
		s.setStudent_phone(rs.getString("student_phone"));
		s.setStudent_addr(rs.getString("student_addr"));
		s.setStudent_email(rs.getString("student_email"));
		s.setStudent_regdate(rs.getDate("student_regdate"));
		s.setOc_admission_count(rs.getInt("oc_admission_count"));
		
		return s;
	}

}



