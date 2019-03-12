package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Open_subject;

public class Open_subjectRowMapper implements RowMapper<Open_subject> {

	@Override
	public Open_subject mapRow(ResultSet rs, int count) throws SQLException {
		
		Open_subject os = new Open_subject();
		
		os.setOs_id(rs.getString("os_id"));
		os.setSubject_id(rs.getString("subject_id"));
		os.setSubject_name(rs.getString("subject_name"));
		os.setOs_start_date(rs.getDate("os_start_date"));
		os.setOs_end_date(rs.getDate("os_end_date"));
		os.setBook_id(rs.getString("book_id"));
		os.setIsbn(rs.getString("isbn"));
		os.setBook_name(rs.getString("book_name"));
		os.setI_file_name(rs.getString("i_file_name"));
		os.setInstructor_id(rs.getString("instructor_id"));
		os.setInstructor_name(rs.getString("instructor_name"));
		os.setCurriculum_name(rs.getString("curriculum_name"));
		os.setOc_id(rs.getString("oc_id"));
		os.setOc_start_date(rs.getDate("oc_start_date"));
		os.setOc_end_date(rs.getDate("oc_end_date"));
		os.setRoom_name(rs.getString("room_name"));
		os.setDeletable(rs.getInt("deletable"));
		
		return os;
	}

}
