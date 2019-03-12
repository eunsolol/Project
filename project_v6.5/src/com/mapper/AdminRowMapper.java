package com.mapper;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Admin;

public class AdminRowMapper implements RowMapper<Admin> {

	@Override
	public Admin mapRow(ResultSet rs, int count) throws SQLException {
		String admin_id = rs.getString("admin_id");
		String admin_name = rs.getString("admin_name");
		String admin_phone = rs.getString("admin_phone");
		Date admin_regdate = rs.getDate("admin_regdate");
		int admin_blind = rs.getInt("admin_blind");
		return new Admin(admin_id, admin_name, admin_phone, admin_regdate, admin_blind);
	}

}

	
