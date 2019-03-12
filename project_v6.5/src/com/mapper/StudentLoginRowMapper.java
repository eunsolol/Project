package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Student;

public class StudentLoginRowMapper implements RowMapper<Student> {

	@Override
	public Student mapRow(ResultSet rs, int count) throws SQLException {
		
		Student s = new Student();
		
		s.setStudent_id(rs.getString("student_id"));
		s.setStudent_name(rs.getString("student_name"));
		s.setS_file_name(rs.getString("s_file_name"));

		return s;
	}

}
