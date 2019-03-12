package com.persistence;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Open_subject;
import com.mapper.Open_subjectRowMapper;

@Repository("open_subjectDAO")
public class Open_subjectDAOImpl implements Open_subjectDAO {

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;
	
	@Override
	public int addOS(Open_subject os){
		String sql = "";
		if(os.getBook_id() == null) {
			sql = "INSERT INTO open_subject(os_id, oc_id, subject_id, os_start_date, os_end_date, book_id, instructor_id)\r\n" + 
					"	VALUES ((SELECT CONCAT('OS', LPAD(IFNULL(SUBSTR(MAX(os_id), 3), 0) + 1, 2, 0)) \r\n" + 
					"    AS newId FROM open_subject os), ?, ?, ?, ?, ?, ?)";
			return this.jdbcTemplateObject.update(sql, os.getOc_id(), os.getSubject_id(),
					os.getOs_start_date().toString(), os.getOs_end_date().toString(), os.getBook_id(), os.getInstructor_id());
		} else {
			sql = "INSERT INTO open_subject(os_id, oc_id, subject_id, os_start_date, os_end_date, instructor_id)\r\n" + 
					"	VALUES ((SELECT CONCAT('OS', LPAD(IFNULL(SUBSTR(MAX(os_id), 3), 0) + 1, 2, 0)) \r\n" + 
					"    AS newId FROM open_subject os), ?, ?, ?, ?, ?)";
			return this.jdbcTemplateObject.update(sql, os.getOc_id(), os.getSubject_id(),
					os.getOs_start_date().toString(), os.getOs_end_date().toString(), os.getInstructor_id());
		}
	}

	@Override
	public int delOS(String osId) {
		String sql = "DELETE FROM open_subject WHERE os_id = ?";
		return this.jdbcTemplateObject.update(sql, osId);
	}

	@Override
	public int updateOS(Open_subject os) {
		String sql = "UPDATE open_subject\r\n" + 
				"	SET book_id = ?, instructor_id = ?, os_start_date = ?, os_end_date = ?\r\n" + 
				"    WHERE os_id = ?";
		return this.jdbcTemplateObject.update(sql, os.getBook_id(), os.getInstructor_id(), os.getOs_start_date().toString(), os.getOs_end_date().toString(), os.getOs_id());
	}

	@Override
	public List<Open_subject> list(String key, String value, int startIdx) {
		String sql = "SELECT os_id, subject_id, subject_name, os_start_date, os_end_date\r\n" + 
				"	, book_id, isbn, book_name, instructor_id, i_file_name, instructor_name\r\n" + 
				"	, oc_id, curriculum_name, oc_start_date, oc_end_date, room_name, deletable\r\n" + 
				"    FROM osList\r\n";
		
		if(key.equals("all")) {
		} else if(key.equals("os_id")) {
			sql += "WHERE os_id = ?\r\n";
		} else if(key.equals("subject_name")) {
			sql += "WHERE INSTR(subject_name, ?) > 0\r\n";
		} else if(key.equals("oc_id")) {
			sql += "WHERE oc_id = ?\r\n";
		}
		sql += " ORDER BY os_id LIMIT ?, 10";
		
		if(key.equals("all")) {
			return this.jdbcTemplateObject.query(sql, new Open_subjectRowMapper(), startIdx);
        } else {
        	return this.jdbcTemplateObject.query(sql, new Open_subjectRowMapper(), value, startIdx);
        }
	}
	
	
	@Override
	public List<Open_subject> listNoLimit(String key, String value) {
		String sql = "SELECT os_id, subject_id, subject_name, os_start_date, os_end_date\r\n" + 
				"	, book_id, isbn, book_name, instructor_id, i_file_name, instructor_name\r\n" + 
				"	, oc_id, curriculum_name, oc_start_date, oc_end_date, room_name, deletable\r\n" + 
				"    FROM osList\r\n";
			if(key.equals("oc_id")) {
				sql += " WHERE oc_id = ?";
			}
			if(key.equals("os_id")) {
				sql += " WHERE os_id = ?";
			}
				
    	return this.jdbcTemplateObject.query(sql, new Open_subjectRowMapper(), value);
	}

	@Override
	public int count(String key, String value) {
		String sql = "SELECT count(*) FROM osList ";
		if(key.equals("all")) {
		} else if(key.equals("os_id")) {
			sql += "WHERE os_id = ?";
		} else if(key.equals("subject_name")) {
			sql += "WHERE INSTR(subject_name, ?) > 0";
		} else if(key.equals("oc_id")) {
			sql += "WHERE oc_id = ?";
		}
		
		if(key.equals("all")) {
			return this.jdbcTemplateObject.queryForObject(sql, Integer.class);
        } else {
        	return this.jdbcTemplateObject.queryForObject(sql, Integer.class, value);
        }
	}

}
