package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Exam;

public class ExamRowMapper implements RowMapper<Exam> {

	@Override
	public Exam mapRow(ResultSet rs, int count) throws SQLException {
		
		Exam e = new Exam();
		
		e.setEx_id(rs.getString("ex_id"));
		e.setOs_id(rs.getString("os_id"));
		e.setOs_id(rs.getString("os_id"));
		e.setSubject_name(rs.getString("subject_name"));
		e.setOs_start_date(rs.getDate("os_start_date"));
		e.setOs_end_date(rs.getDate("os_end_date"));
		e.setInstructor_name(rs.getString("instructor_name"));
		e.setI_file_name(rs.getString("i_file_name"));
		e.setBook_name(rs.getString("book_name"));
		e.setIsbn(rs.getString("isbn"));
		e.setAbsence_point(rs.getInt("absence_point"));
		e.setWrittenExam_point(rs.getInt("writtenExam_point"));
		e.setPractical_point(rs.getInt("practical_point"));
		e.setEx_date(rs.getDate("ex_date"));
		e.setQuestion(rs.getString("question"));

		return e;
	}

}
