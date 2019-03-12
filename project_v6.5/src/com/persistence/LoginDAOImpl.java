package com.persistence;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Admin;
import com.domain.Instructor;
import com.domain.Student;
import com.mapper.AdminLoginRowMapper;
import com.mapper.InstructorLoginRowMapper;
import com.mapper.StudentLoginRowMapper;

@Repository("loginDAO")
public class LoginDAOImpl implements LoginDAO {
	
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplate;

	@Override
	public Admin aLogin(Admin a) {
		String sql = "SELECT admin_name, admin_id, admin_blind, admin_phone\r\n" + 
				"	FROM admin_\r\n" + 
				"	WHERE admin_id = ? AND admin_pw = ?";
		return this.jdbcTemplate.queryForObject(sql, new AdminLoginRowMapper(), a.getAdmin_id(), a.getAdmin_pw());
	}
	
	@Override
	public Admin mLogin(Admin a) {
		String sql = "SELECT admin_name, admin_id, admin_blind, admin_phone\r\n" + 
				"	FROM admin_\r\n" + 
				"	WHERE admin_id = ? AND admin_pw = ? AND admin_grade= '0'";
		return this.jdbcTemplate.queryForObject(sql, new AdminLoginRowMapper(), a.getAdmin_id(), a.getAdmin_pw());
	}

	@Override
	public Student sLogin(Student st) {
		String sql = "SELECT student_name, s.student_id, s_file_name\r\n" + 
				"	FROM student s LEFT JOIN student_picture sp ON s.student_id = sp.student_id\r\n" + 
				"	WHERE student_name = ? AND student_pw = ?";
		return this.jdbcTemplate.queryForObject(sql, new StudentLoginRowMapper(), st.getStudent_name(), st.getStudent_pw());
	}

	@Override
	public Instructor iLogin(Instructor i) {
		String sql = "SELECT instructor_name, i.instructor_id, i_file_name\r\n" + 
				"	FROM instructor i LEFT JOIN instructor_picture ip ON i.instructor_id = ip.instructor_id\r\n" + 
				"	WHERE instructor_name=? AND instructor_pw=?";
		return this.jdbcTemplate.queryForObject(sql, new InstructorLoginRowMapper(), i.getInstructor_name(), i.getInstructor_pw());
	}

}
