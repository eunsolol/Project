package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Exam;

public class GradeRowMapper implements RowMapper<Exam> {

	@Override
	public Exam mapRow(ResultSet rs, int count) throws SQLException {
		
		Exam e = new Exam();
		
		e.setEx_id(rs.getString("ex_id"));
		e.setStudent_id(rs.getString("student_id"));
		e.setStudent_name(rs.getString("student_name"));
		e.setStudent_phone(rs.getString("student_phone"));
		e.setstatus_(rs.getString("status_"));
		e.setOs_end_date(rs.getDate("end_date"));
		e.setAbsence_grade(rs.getInt("absence_grade"));
		e.setWrittenExam_grade(rs.getInt("writtenExam_grade"));
		e.setPractical_grade(rs.getInt("practical_grade"));
		e.setTotal(rs.getInt("total"));

		return e;
	}

}
