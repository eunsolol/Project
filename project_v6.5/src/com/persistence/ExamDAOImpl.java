package com.persistence;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Exam;
import com.mapper.ExamRowMapper;
import com.mapper.GradeRowMapper;
import com.mapper.GradeRowMapper2;
import com.mapper.GradeRowMapper3;

@Repository("examDAO")
public class ExamDAOImpl implements ExamDAO{

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;
	
	@Override
	public List<Exam> aCheckPoint(Exam e) {
		String sql = "SELECT ex_id, os.os_id, subject_name , os_start_date, os_end_date, i_file_name, instructor_name, isbn, book_name\r\n" + 
				"	, absence_point, writtenExam_point, practical_point, ex_date, question\r\n" + 
				"		FROM open_subject os LEFT JOIN exam e ON os.os_id = e.os_id\r\n" + 
				"			, subject_ s, instructor i LEFT JOIN instructor_picture ip ON i.instructor_id = ip.instructor_id, book b\r\n" + 
				"        WHERE s.subject_id = os.subject_id AND i.instructor_id = os.instructor_id\r\n" + 
				"			AND b.book_id = os.book_id\r\n" +
				"			AND oc_id = ?\r\n";
		if(e.getEx_id() != null) {
			sql += "			AND e.ex_id = ?";
			return this.jdbcTemplateObject.query(sql, new ExamRowMapper(), e.getOc_id(), e.getEx_id());
		}
		return this.jdbcTemplateObject.query(sql, new ExamRowMapper(), e.getOc_id());
	}

	@Override
	public List<Exam> aCheckGrade(Exam e) {
		String sql = "SELECT t.ex_id, s_pid, s_file_name, t.student_id, s.student_name, s.student_phone, status_, end_date\r\n" + 
				"	, absence_grade, writtenExam_grade, practical_grade,\r\n" + 
				"	(absence_grade + writtenExam_grade + practical_grade) total\r\n" + 
				"	FROM student s LEFT JOIN student_picture sp ON s.student_id = sp.student_id,\r\n" + 
				"		student_exam t LEFT JOIN grade g ON t.ex_id = g.ex_id AND t.student_id = g.student_id\r\n" + 
				"		WHERE t.student_id = s.student_id\r\n" + 
				"		AND t.ex_id = ?";
		return this.jdbcTemplateObject.query(sql, new GradeRowMapper(), e.getEx_id());
	}

	@Override
	public List<Exam> aCheckStGrade(Exam e) {
		String sql = "SELECT os_id, subject_name, os_start_date, os_end_date, book_name, isbn, instructor_name, i_file_name\r\n" + 
				"	, absence_point, absence_grade, writtenExam_point, writtenExam_grade, practical_point, practical_grade, ex_date, question\r\n" + 
				"		FROM student_exam t LEFT JOIN grade g ON t.ex_id = g.ex_id AND t.student_id = g.student_id\r\n" + 
				"			LEFT JOIN book b ON t.book_id = b.book_id,\r\n" + 
				"            instructor i LEFT JOIN instructor_picture ip ON i.instructor_id = ip.instructor_id, subject_ s\r\n" + 
				"		WHERE t.instructor_id = i.instructor_id AND t.subject_id = s.subject_id\r\n" + 
				"        AND t.student_id = ?\r\n" + 
				"        AND oc_id = ?";
		return this.jdbcTemplateObject.query(sql, new GradeRowMapper2(), e.getStudent_id(), e.getOc_id());
	}
	
	@Override
	public List<Exam> iCheckPoint(Exam e) {
		String sql = "SELECT ex_id, absence_point, writtenExam_point, practical_point, ex_date, question\r\n" + 
				"		FROM open_subject os LEFT JOIN exam e ON os.os_id = e.os_id, subject_ s, instructor i\r\n" + 
				"			WHERE s.subject_id = os.subject_id AND i.instructor_id = os.instructor_id\r\n" + 
				"           AND i.instructor_id = ?\r\n" + 
				"			AND os.os_id = ?";
		if(e.getEx_id() != null) {
			sql += "			AND e.ex_id = ?";
			
			return this.jdbcTemplateObject.query(sql, new GradeRowMapper3(), e.getInstructor_id() ,e.getOs_id(), e.getEx_id());
		}
		return this.jdbcTemplateObject.query(sql, new GradeRowMapper3(), e.getInstructor_id(), e.getOs_id());
	}
	
	
	
	

}
