package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Student;

public class StudentRowMapper3 implements RowMapper<Student>{

	@Override
	public Student mapRow(ResultSet rs, int count) throws SQLException {
		
		Student s = new Student();
		
		s.setStudent_name(rs.getString("student_name"));
		s.setS_file_name(rs.getString("s_file_name"));
		s.setStudent_phone(rs.getString("student_phone"));
		s.setStudent_addr(rs.getString("student_addr"));
		s.setStudent_email(rs.getString("student_email"));
		
		return s;
	}

}



