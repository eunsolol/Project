package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Exam;

public class GradeRowMapper3 implements RowMapper<Exam> {

	@Override
	public Exam mapRow(ResultSet rs, int count) throws SQLException {
		
		Exam e = new Exam();
		
		e.setEx_id(rs.getString("ex_id"));
		e.setAbsence_point(rs.getInt("absence_point"));
		e.setWrittenExam_point(rs.getInt("writtenExam_point"));
		e.setPractical_point(rs.getInt("practical_point"));
		e.setEx_date(rs.getDate("ex_date"));
		e.setQuestion(rs.getString("question"));

		return e;
	}

}
