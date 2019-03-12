package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Classroom;

public class ClassroomRowMapper2 implements RowMapper<Classroom> {

	@Override
	public Classroom mapRow(ResultSet rs, int count) throws SQLException {
		
		Classroom r = new Classroom();
		
		r.setOc_id(rs.getString("oc_id"));
		r.setRoom_name(rs.getString("room_name"));
		r.setCurriculum_name(rs.getString("curriculum_name"));
		r.setOc_start_date(rs.getDate("oc_start_date"));
		r.setOc_end_date(rs.getDate("oc_end_date"));
		r.setAdmissionCount(rs.getInt("admissionCount"));
		r.setAbandCount(rs.getInt("abandCount"));
		r.setRoom_capacity(rs.getInt("room_capacity"));
		r.setIngRate(rs.getInt("ingRate"));
		r.setAbandRate(rs.getInt("abandRate"));
		r.setProgress(rs.getInt("progress"));

		return r;
	}

}
