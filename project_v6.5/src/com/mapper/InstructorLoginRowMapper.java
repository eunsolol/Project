package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Instructor;

public class InstructorLoginRowMapper implements RowMapper<Instructor> {

	@Override
	public Instructor mapRow(ResultSet rs, int count) throws SQLException {
		
		Instructor i = new Instructor();
		
		i.setInstructor_id(rs.getString("instructor_id"));
		i.setInstructor_name(rs.getString("instructor_name"));
		i.setI_file_name(rs.getString("i_file_name"));

		return i;
	}

}
