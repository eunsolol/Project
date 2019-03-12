package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Subject;

public class SubjectRowMapper2 implements RowMapper<Subject> {

	@Override
	public Subject mapRow(ResultSet rs, int count) throws SQLException {
		
		Subject s = new Subject();
		
		s.setSubject_id(rs.getString("subject_id"));
		s.setSubject_name(rs.getString("subject_name"));

		return s;
	}

}
