package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Classroom;

public class ClassroomRowMapper implements RowMapper<Classroom> {

	@Override
	public Classroom mapRow(ResultSet rs, int count) throws SQLException {
		
		Classroom r = new Classroom();
		
		r.setRoom_id(rs.getString("room_id"));
		r.setRoom_name(rs.getString("room_name"));
		r.setRoom_capacity(rs.getInt("room_capacity"));
		r.setDeletable(rs.getInt("deletable"));

		return r;
	}

}
