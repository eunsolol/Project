package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Notice;

public class NoticeRowMapper implements RowMapper<Notice>{

	@Override
	public Notice mapRow(ResultSet rs, int count) throws SQLException {
		
		Notice n = new Notice();
		
		n.setNotice_id(rs.getString("notice_id"));
		n.setAdmin_id(rs.getString("admin_id"));
		n.setContent(rs.getString("content"));
		n.setNotice_regdate(rs.getDate("notice_regdate"));
		
		return n;
	}

}



