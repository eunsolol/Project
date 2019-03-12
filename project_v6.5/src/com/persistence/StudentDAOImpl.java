package com.persistence;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Student;
import com.mapper.StudentRowMapper;
import com.mapper.StudentRowMapper2;
import com.mapper.StudentRowMapper3;

@Repository("studentDAO")
public class StudentDAOImpl implements StudentDAO {

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;
	
	@Override
	public List<Student> list(String key, String value, int startIdx) {
		String sql = "SELECT s.student_id, student_name, s_pid, s_file_name," +
				" student_phone, student_regdate, student_addr, student_email,\r\n" + 
				"	(SELECT COUNT(*) FROM lecture_history lh " + 
				" WHERE lh.student_id = s.student_id) oc_admission_count\r\n" + 
				"	FROM student s LEFT JOIN student_picture sp ON s.student_id = sp.student_id\r\n";
		if(key.equals("all")) {
		} else if(key.equals("student_id")) {
			sql += " WHERE s.student_id = ?\r\n";
		} else if(key.equals("student_name")) {
			sql += " WHERE INSTR(student_name, ?) > 0\r\n";
		}
		sql += " ORDER BY student_id LIMIT ?, 10"; 
		
		if(key.equals("all")) {
			return this.jdbcTemplateObject.query(sql, new StudentRowMapper(), startIdx);
        } else {
        	return this.jdbcTemplateObject.query(sql, new StudentRowMapper(), value, startIdx);
        }
	}
	

	@Override
	public int addStudent(Student st) {
		String sql = "INSERT INTO student (student_id, student_name, student_phone, student_email, student_addr, student_regdate, student_pw)\r\n" + 
				"	VALUES ((SELECT CONCAT('S', LPAD(IFNULL(SUBSTR(MAX(student_id), 2), 0)+1, 2, 0))\r\n" + 
				"	FROM student s), ?, ?, ?, ?,curdate(), ?)";
		return this.jdbcTemplateObject.update(sql, st.getStudent_name(), st.getStudent_phone(), st.getStudent_email()
				, st.getStudent_addr(), st.getStudent_pw());
	}

	@Override
	public int delStudent(String student_id) {
		String sql = "DELETE FROM student\r\n" + 
				"	WHERE student_id = ?";
		return this.jdbcTemplateObject.update(sql, student_id);
	}

	@Override
	public int updateStudent(Student st) {
		String sql = "UPDATE student\r\n" + 
				"	SET student_name = ?, student_phone = ?, student_email = ?, student_addr = ?\r\n" + 
				"    WHERE student_id = ?";
		return this.jdbcTemplateObject.update(sql, st.getStudent_name(), st.getStudent_phone()
				, st.getStudent_email(), st.getStudent_addr(), st.getStudent_id());
	}

	@Override
	public int addPicture(Student st) {
		String sql = "INSERT INTO student_picture(s_pid, student_id, s_file_name)\r\n" + 
				"	VALUES((SELECT CONCAT('SP', LPAD(IFNULL(SUBSTR(MAX(s_pid), 3), 0) + 1, 2, 0))\r\n" + 
				"    AS newId FROM student_picture sp), ?, ?)";
		return this.jdbcTemplateObject.update(sql, st.getStudent_id(), st.getS_file_name());
	}


	@Override
	public int resetPw(Student st) {
		String sql = "UPDATE student\r\n" + 
				"	SET student_pw = ?\r\n" + 
				"	WHERE student_id = ?";
		return this.jdbcTemplateObject.update(sql, st.getStudent_pw(), st.getStudent_id());
	}


	@Override
	public List<Student> lhList(Student st) {
		/*String sql = "SELECT t.student_id, student_name, student_phone,\r\n" + 
				"	oc_id, curriculum_name, oc_admission_date, oc_start_date, oc_end_date, room_name, status_, end_date\r\n" + 
				"	FROM student_status t, curriculum c, classroom r, student s\r\n" + 
				"    WHERE t.curriculum_id = c.curriculum_id\r\n" + 
				"    AND t.room_id = r.room_id\r\n" + 
				"    AND s.student_id = t.student_id\r\n";*/
		String sql = "SELECT t.student_id, student_name, student_phone,\r\n" + 
				"	oc_id, curriculum_name, oc_admission_date, oc_start_date, oc_end_date, room_name, status_, end_date,\r\n" + 
				"    IF(oc_start_date < CURDATE() , IF(CURDATE() < oc_end_date, 0, 1), 2) possible_aband, IF( CURDATE() < oc_start_date, 0, 1) possible_cancel\r\n" + 
				"	FROM student_status t, curriculum c, classroom r, student s\r\n" + 
				"	WHERE t.curriculum_id = c.curriculum_id\r\n" + 
				"	AND t.room_id = r.room_id\r\n" + 
				"	AND s.student_id = t.student_id\r\n";
		if(st.getOc_id() == null) {
			sql += "    AND t.student_id = ?\r\n";
		} else if (st.getStudent_id() == null) {
			sql += "    AND oc_id = ?\r\n"; 
		} else {
			sql += "    AND oc_id = ?\r\n AND t.student_id = ?\r\n";
		}
		sql += "    ORDER BY oc_id";
		
		if(st.getOc_id() == null) {
			return this.jdbcTemplateObject.query(sql, new StudentRowMapper2(), st.getStudent_id());
		} else if (st.getStudent_id() == null) {
			return this.jdbcTemplateObject.query(sql, new StudentRowMapper2(), st.getOc_id());
		} else {
			return this.jdbcTemplateObject.query(sql, new StudentRowMapper2(), st.getOc_id(), st.getStudent_id());
		}
	}


	@Override
	public Student profile(Student st) {
		String sql = "SELECT s_file_name, student_name, student_phone, student_email, student_addr\r\n" + 
				"	FROM student s LEFT JOIN student_picture sp ON s.student_id = sp.student_id\r\n" + 
				"    WHERE s.student_id = ?";
		return this.jdbcTemplateObject.queryForObject(sql, new StudentRowMapper3(), st.getStudent_id());
	}

	@Override
	public int abandonment(Student st) {
		String sql = "INSERT INTO abandonment VALUES(?, ?, ?)";
		return this.jdbcTemplateObject.update(sql, st.getAband_date(), st.getStudent_id(), st.getOc_id());
	}

	@Override
	public int cancelOC(Student st) {
		String sql = "DELETE FROM lecture_history WHERE student_id = ? AND oc_id = ?";
		return this.jdbcTemplateObject.update(sql, st.getStudent_id(), st.getOc_id());
	}

	@Override
	public int addLH(Student st) {
		String sql = "INSERT INTO lecture_history (student_id, oc_id, oc_admission_date)\r\n" + 
				"	VALUES (?, ?, curdate())";
		return this.jdbcTemplateObject.update(sql, st.getStudent_id(), st.getOc_id());
	}

	@Override
	public int updatePicture(Student st) {
		String sql = "UPDATE student_picture SET s_file_name = ? WHERE s_pid = ?";
		return this.jdbcTemplateObject.update(sql, st.getS_file_name(), st.getS_pid());
	}

	
	@Override
	public int count(String key, String value) {
		String sql = "SELECT count(*) FROM student ";
		if(key.equals("all")) {
		} else if(key.equals("student_id")) {
			sql += " WHERE student_id = ?\r\n";
		} else if(key.equals("student_name")) {
			sql += " WHERE INSTR(student_name, ?) > 0";
		}
		if(key.equals("all")) {
			return this.jdbcTemplateObject.queryForObject(sql, Integer.class);
        } else {
        	return this.jdbcTemplateObject.queryForObject(sql, Integer.class, value);
        }
	}


}
