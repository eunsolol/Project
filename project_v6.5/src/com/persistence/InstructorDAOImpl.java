package com.persistence;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Instructor;
import com.domain.Subject;
import com.mapper.*;

@Repository("instructorDAO")
public class InstructorDAOImpl implements InstructorDAO {

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public int reset(Instructor i) {
		int result = 0;
		String sql = "UPDATE instructor SET instructor_pw = ? WHERE instructor_id = ? ";
		result = this.jdbcTemplateObject.update(sql, i.getInstructor_pw(), i.getInstructor_id());
		return result;
	}
	
	@Override
	public int modify(Instructor i) {
		int result = 0;
		String sql = "UPDATE instructor SET instructor_pw = ? WHERE instructor_id = ? AND instructor_pw = ?";
		result = this.jdbcTemplateObject.update(sql, i.getInstructor_new_pw(), i.getInstructor_id(), i.getInstructor_pw());
		return result;
	}
	
	@Override
	public String addInstId() {
		String result ="";
		String sql = "SELECT CONCAT('I', LPAD(IFNULL(SUBSTR(MAX(instructor_id), 2), 0) + 1, 2, 0)) AS instructor_id FROM instructor i";
		result = this.jdbcTemplateObject.queryForObject(sql, String.class);
		
		return result;
	}

	@Override
	public int addInst(Instructor i, String[] pc_check) {
		int result = 0;
		String sql = "INSERT INTO instructor (instructor_id, instructor_name, instructor_phone, instructor_email, instructor_addr ,instructor_regdate, instructor_pw)  \r\n" + 
				"		 VALUES (? ,?, ?, ? ,?,CURDATE(),?)";
		result = this.jdbcTemplateObject.update(sql, i.getInstructor_id(), i.getInstructor_name(), i.getInstructor_phone(), i.getInstructor_email()
											,i.getInstructor_addr(), i.getInstructor_pw());
		
		return result;
	}
	
	public int addPC(String instructor_id, String subject_id) {
		int result = 0;
		String sql= "INSERT INTO possible_course (instructor_id, subject_id)\r\n" + 
				"		 VALUES (? , ?)";
		
		result = this.jdbcTemplateObject.update(sql, instructor_id, subject_id);
		return result;
	}

	
	@Override
	public int updateInst(Instructor i) {
		int result = 0;
		String sql= "";
		result = this.jdbcTemplateObject.update(sql);
		return result;
	}

	@Override
	public int delInst(String instructor_id) {
		int result = 0;
		String sql= "DELETE FROM instructor WHERE instructor_id = ? ";
		result = this.jdbcTemplateObject.update(sql, instructor_id);
		return result;
	}
	public int delPC(String instructor_id, String subject_id) {
		int result = 0;
		String sql= "DELETE FROM possible_course WHERE instructor_id = ?, subject_id = ? ";
		result = this.jdbcTemplateObject.update(sql, instructor_id);
		return result;
	}
	
	@Override
	public int addPicture(Instructor i) {
		String sql = "INSERT INTO instructor_picture(i_pid, instructor_id, i_file_name)\r\n" + 
				"	VALUES((SELECT CONCAT('IP', LPAD(IFNULL(SUBSTR(MAX(i_pid), 3), 0) + 1, 2, 0))\r\n" + 
				"    AS newId FROM instructor_picture ip), ?, ?)";
		return this.jdbcTemplateObject.update(sql, i.getInstructor_id(), i.getI_file_name());
	}

	@Override
	public int updatePicture(Instructor i) {
		String sql = "UPDATE instructor_picture SET i_file_name = ? WHERE i_pid = ?";
		return this.jdbcTemplateObject.update(sql, i.getI_file_name(), i.getI_pid());
	}


	@Override
	public int totalcount() {
		int result = 0;
		String sql= "";
		result = this.jdbcTemplateObject.queryForObject(sql, Integer.class);
		return result;
	}

	// 占쎈쐻占쎈윪占쎌벁癲ル슪�맔占쎌굲,占쎈쐻占쎈윥獄��엺�쐻占쎈윪占쎌젳 占쎈쨬占쎈즴甕겸넂苡��뜝占� �뜝�럥�돯�뜝�럥痢듿뜝�럩議�
	@Override
	public List<Instructor> list(String key, String value) {
		List<Instructor> result = null;
		String sql = "SELECT i.instructor_id , instructor_name, instructor_phone\r\n" + 
				"	 , (SELECT GROUP_CONCAT( s.subject_name SEPARATOR ', ') \r\n" + 
				"	 FROM subject_ s, possible_course pc\r\n" + 
				"     WHERE pc.subject_id = s.subject_id AND pc.instructor_id = i.instructor_id\r\n" + 
				"	 GROUP BY pc.instructor_id) possible_course , instructor_regdate\r\n" + 
				"	 , (SELECT COUNT(*) FROM open_subject os WHERE os.instructor_id = i.instructor_id) deletable\r\n" + 
				"     , i_pid ,i_file_name\r\n" + 
				"     FROM instructor i\r\n" + 
				"     LEFT JOIN instructor_picture ip ON i.instructor_id = ip.instructor_id";
		if (key.equals("instructor_id")) {
			sql += " WHERE i.instructor_id = ?";
		}
		sql += " ORDER BY i.instructor_id";

		if (key.equals("all")) {
			result = this.jdbcTemplateObject.query(sql, new InstructorRowMapper1());
		} else {
			result = this.jdbcTemplateObject.query(sql, new InstructorRowMapper1(), value);
		}
		return result;
	}
	

	// 占쎈쨬占쎈즴甕겸댙�삕甕겄뱀㉨�걹占쎌굲 占쎈쨬占쎈즴甕겸댙�삕甕겄듬쐻占쎈윥獒뺤쉻�삕占쎈꺋占쎌굲濚욌꼬�슦�굲
	@Override
	public List<Instructor> list2(String key, String value) {
		List<Instructor> result = null;
		String sql = "SELECT os.os_id, s.subject_name, os.os_start_date, os.os_end_date, book_name, isbn\r\n" + 
				"	FROM subject_ s, open_subject os \r\n" + 
				"		LEFT JOIN book b ON os.book_id = b.book_id\r\n" + 
				"	WHERE s.subject_id = os.subject_id \r\n" + 
				"	AND curdate() >= os_start_date AND curdate() <= os_end_date\r\n" + 
				"	 AND instructor_id = ? \r\n" + 
				"	 ORDER BY os_id";
		result = this.jdbcTemplateObject.query(sql, new InstructorRowMapper2(), value);
		
		return result;
	}

	// 占쎈쨬占쎈즴甕겸댙�삕甕겄우삕占쎄퐵�뜝�럡�꼤嶺뚯빢�삕 占쎈쨬占쎈즴甕겸댙�삕甕겄듬쐻占쎈윥獒뺤쉻�삕占쎈꺋占쎌굲濚욌꼬�슦�굲
	@Override
	public List<Instructor> list3(String key, String value) {
		List<Instructor> result = null;
		String sql = "SELECT os.os_id, s.subject_name, os.os_start_date, os.os_end_date, book_name, isbn\r\n" + 
				"		FROM subject_ s, open_subject os \r\n" + 
				"			LEFT JOIN book b ON os.book_id = b.book_id\r\n" + 
				"		WHERE s.subject_id = os.subject_id \r\n" + 
				"	AND curdate() > os_end_date\r\n" + 
				"	 AND instructor_id = ? \r\n" + 
				"	 ORDER BY os_id";
		result = this.jdbcTemplateObject.query(sql, new InstructorRowMapper2(), value);
		
		return result;
	}
	
	//강의예정
	@Override
	public List<Instructor> list4(String key, String value) {
		List<Instructor> result = null;
		String sql = "SELECT os.os_id, s.subject_name, os.os_start_date, os.os_end_date, book_name, isbn\r\n" + 
				"	FROM subject_ s, open_subject os \r\n" + 
				"		LEFT JOIN book b ON os.book_id = b.book_id\r\n" + 
				"	WHERE s.subject_id = os.subject_id \r\n" + 
				"	AND curdate() < os_start_date\r\n" + 
				"	 AND instructor_id = ? \r\n" + 
				"	 ORDER BY os_id";
		result = this.jdbcTemplateObject.query(sql, new InstructorRowMapper2(), value);
		
		return result;
	}
	
	@Override
	public List<Instructor> osInfo(String key, String value) {
		
		// status 뜨게
		List<Instructor> result = null;
		String sql = "  SELECT os.os_id, s.subject_name, os.os_start_date, os.os_end_date, book_name, isbn\r\n" + 
				"		, (CASE WHEN curdate() > os_start_date AND curdate() <= os_end_date THEN '강의중'\r\n" + 
				"				WHEN curdate() > os_end_date THEN '강의종료'\r\n" + 
				"				WHEN curdate() < os_start_date THEN '강의예정' END) status\r\n" + 
				"		FROM subject_ s, open_subject os \r\n" + 
				"			LEFT JOIN book b ON os.book_id = b.book_id\r\n" + 
				"		WHERE s.subject_id = os.subject_id \r\n" + 
				"	 AND instructor_id = ?\r\n" + 
				"	 ORDER BY os_id";
		result = this.jdbcTemplateObject.query(sql, new InstructorRowMapper3(), value);
		
		return result;
	}
	@Override
	public Instructor profile(String instructor_id) {
		Instructor result = null;
		String sql = "SELECT i.instructor_id, instructor_name, instructor_phone, instructor_email,instructor_addr, i_file_name\r\n" + 
				"	FROM instructor i\r\n" + 
				"    LEFT JOIN instructor_picture ip ON i.instructor_id = ip.instructor_id\r\n" + 
				"    WHERE i.instructor_id = ?";
		result = this.jdbcTemplateObject.queryForObject(sql, new InstructorRowMapper4(), instructor_id);
		
		return result;
	}
	@Override
	public List<Subject> pcInfo(String instructor_id) {
		
		// 강사- 강사프로필 - 강의 가능 과목
		List<Subject> result = null;
		String sql = "SELECT s.subject_id, subject_name\r\n" + 
				"	FROM subject_ s, possible_course pc\r\n" + 
				"	WHERE s.subject_id = pc.subject_id\r\n" + 
				"	AND instructor_id = ?";
		result = this.jdbcTemplateObject.query(sql, new SubjectRowMapper2(), instructor_id);
		
		return result;
	}



}
