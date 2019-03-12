package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Curriculum;

public class CurriculumRowMapper implements RowMapper<Curriculum> {

	@Override
	public Curriculum mapRow(ResultSet rs, int count) throws SQLException {
		
		Curriculum c = new Curriculum();
		
		c.setCurriculum_id(rs.getString("curriculum_id"));
		c.setCurriculum_name(rs.getString("curriculum_name"));
		c.setDeletable(rs.getInt("deletable"));

		return c;
	}

}
