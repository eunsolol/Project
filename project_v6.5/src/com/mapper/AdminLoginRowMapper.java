package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Admin;

public class AdminLoginRowMapper implements RowMapper<Admin> {

	@Override
	public Admin mapRow(ResultSet rs, int count) throws SQLException {
		
		Admin a = new Admin();
		
		a.setAdmin_id(rs.getString("admin_id"));
		a.setAdmin_name(rs.getString("admin_name"));
		a.setAdmin_blind(rs.getInt("admin_blind"));
		a.setAdmin_phone(rs.getString("admin_phone"));

		return a;
	}

}
