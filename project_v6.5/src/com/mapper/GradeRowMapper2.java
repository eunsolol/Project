package com.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.domain.Exam;

public class GradeRowMapper2 implements RowMapper<Exam> {

	@Override
	public Exam mapRow(ResultSet rs, int count) throws SQLException {
		
		Exam e = new Exam();
		
		e.setOs_id(rs.getString("os_id"));
		e.setSubject_name(rs.getString("subject_name"));
		e.setOs_start_date(rs.getDate("os_start_date"));
		e.setOs_end_date(rs.getDate("os_end_date"));
		e.setBook_name(rs.getString("book_name"));
		e.setIsbn(rs.getString("isbn"));
		e.setInstructor_name(rs.getString("instructor_name"));
		e.setI_file_name(rs.getString("i_file_name"));
		e.setAbsence_point(rs.getInt("absence_point"));
		e.setAbsence_grade(rs.getInt("absence_grade"));
		e.setWrittenExam_point(rs.getInt("writtenExam_point"));
		e.setWrittenExam_grade(rs.getInt("writtenExam_grade"));
		e.setPractical_point(rs.getInt("practical_point"));
		e.setPractical_grade(rs.getInt("practical_grade"));
		e.setEx_date(rs.getDate("ex_date"));
		e.setQuestion(rs.getString("question"));

		return e;
	}

}
