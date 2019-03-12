package com.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Open_curriculum;
import com.mapper.Open_curriculumMapper1;
import com.mapper.Open_curriculumMapper3;

@Repository("open_curriculumDAO")
public class Open_curriculumDAOImpl implements Open_curriculumDAO {
	
	@Resource(name = "jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;
	
	
	@Override
	public int addOC(Open_curriculum oc) {
		int result = 0;
		String sql = "INSERT INTO open_curriculum(oc_id, curriculum_id, room_id, oc_start_date, oc_end_date)\r\n"
				+ "    VALUES ((SELECT CONCAT('OC', LPAD(IFNULL(SUBSTR(MAX(oc_id), 3), 0) + 1, 2, 0)) AS oc_id "
				+ "FROM open_curriculum oc), ?, ?, ?, ?)";
		
		result = this.jdbcTemplateObject.update(sql, oc.getCurriculum_id(), oc.getRoom_id(), oc.getOc_start_date().toString(), oc.getOc_end_date().toString());
		return result;
	}

	@Override
	public int updateOC(Open_curriculum oc) {
		int result = 0;
		String sql = "UPDATE open_curriculum SET room_id = ?, oc_start_date = ?, oc_end_date = ? WHERE oc_id = ?";
		result = this.jdbcTemplateObject.update(sql, oc.getRoom_id(), oc.getOc_start_date().toString(), oc.getOc_end_date().toString(), oc.getOc_id());
		return result;
	}
	
	@Override
	public int delOC(String oc_id) {
		int result = 0;
		String sql = "DELETE FROM open_curriculum WHERE oc_id = ?";
		result = this.jdbcTemplateObject.update(sql, oc_id);
		return result;
	}


	/*
	�쟾泥대챸, 怨쇱젙紐�, 怨쇱젙id
	媛쒖꽕 怨쇱젙 踰덊샇 | 怨쇱젙紐� | 怨쇱젙�떆�옉�씪 | 怨쇱젙醫낅즺�씪 | 媛뺤쓽�떎 | 媛쒖꽕 怨쇰ぉ �벑濡� 媛��닔 | �닔媛뺤깮 �벑濡� �씤�썝 | �궘�젣 媛��뒫 �뿬遺�
	 */
		
	@Override
	public List<Open_curriculum> list(String key, String value, int startIdx) {
		List<Open_curriculum> result = new ArrayList<Open_curriculum>();
	
		String sql = "SELECT oc.oc_id, c.curriculum_name, oc.oc_start_date, oc.oc_end_date, cr.room_name    \r\n" + 
				"		 ,  (SELECT COUNT(os_id) FROM open_subject os WHERE oc.oc_id = os.oc_id) as subjectCnt    \r\n" + 
				"		 , (SELECT COUNT(student_id) FROM lecture_history h where oc.oc_id=h.oc_id) as studentCnt \r\n" + 
				"		 , (SELECT COUNT(*) FROM lecture_history lh WHERE lh.oc_id = oc.oc_id) deletable\r\n" + 
				"	 FROM curriculum c, open_curriculum oc, classroom cr \r\n" + 
				"	 WHERE c.curriculum_id = oc.curriculum_id AND oc.room_id = cr.room_id ";

		if (key.equals("oc_id")) {
			sql += " AND oc.oc_id = ? ";
		}
		if (key.equals("curriculum_name")) {
			sql += " AND INSTR(c.curriculum_name, ?) > 0 ";
		}
		sql += " ORDER BY oc.oc_id LIMIT ?, 10";

		
		if (key.equals("all")) {
			result = this.jdbcTemplateObject.query(sql, new Open_curriculumMapper1(), startIdx);
		} else {
			result = this.jdbcTemplateObject.query(sql, new Open_curriculumMapper1(), value, startIdx);
		}
		
		return result;
	}


	@Override
	public List<Open_curriculum> ocList(String os_id, String instructor_id, int startIdx) {
		List<Open_curriculum> result = new ArrayList<Open_curriculum>();
	
		String sql = "SELECT oc.oc_id, c.curriculum_name, oc.oc_start_date ,oc.oc_end_date, cr.room_name    \r\n" + 
				"					         ,  (CASE WHEN curdate() > oc_start_date AND curdate() <= oc_end_date THEN '강의중'\r\n" + 
				"										WHEN curdate() > oc_end_date THEN '강의종료'\r\n" + 
				"										WHEN curdate() < oc_start_date THEN '강의예정' END) status \r\n" + 
				"							,(SELECT COUNT(student_id) FROM lecture_history h where oc.oc_id=h.oc_id) as studentCnt \r\n" + 
				"					     FROM  curriculum c, open_curriculum oc, classroom cr, open_subject os\r\n" + 
				"					     WHERE c.curriculum_id = oc.curriculum_id\r\n" + 
				"                         AND oc.room_id = cr.room_id\r\n" + 
				"                         AND oc.oc_id = os.oc_id\r\n" + 
				"                         AND os_id = ?\r\n" + 
				"                         AND instructor_id = ?\r\n" + 
				"                         ORDER BY oc_id LIMIT ?, 10";

		result = this.jdbcTemplateObject.query(sql, new Open_curriculumMapper3(), os_id, instructor_id, startIdx);

		return result;
	}


	// �닔媛뺤깮 �닔媛뺤떊泥��떆 異쒕젰�릺�뒗 媛쒖꽕怨쇱젙 紐⑸줉 (�븘吏� �떆�옉�븯吏� �븡�� 怨쇱젙)
	@Override
	public List<Open_curriculum> addLHlist() {
		String sql = "SELECT oc.oc_id, c.curriculum_name, oc.oc_start_date, oc.oc_end_date, cr.room_name    \r\n" + 
				"	 ,  (SELECT COUNT(os_id) FROM open_subject os WHERE oc.oc_id = os.oc_id) as subjectCnt    \r\n" + 
				"	 , (SELECT COUNT(student_id) FROM lecture_history h where oc.oc_id=h.oc_id) as studentCnt \r\n" + 
				"	 , (SELECT COUNT(*) FROM lecture_history lh WHERE lh.oc_id = oc.oc_id) deletable\r\n" + 
				" FROM curriculum c, open_curriculum oc, classroom cr \r\n" + 
				" WHERE c.curriculum_id = oc.curriculum_id AND oc.room_id = cr.room_id\r\n" + 
				"    AND curdate() <  oc.oc_start_date\r\n" + 
				" ORDER BY oc_id";
		return this.jdbcTemplateObject.query(sql, new Open_curriculumMapper1());
	}

	// 媛쒖꽕怨쇰ぉ 異붽��떆 異쒕젰�릺�뒗 媛쒖꽕怨쇱젙 紐⑸줉 (醫낅즺�릺吏� �븡�� 怨쇱젙)
	@Override
	public List<Open_curriculum> addOSlist() {
		String sql = "SELECT oc.oc_id, c.curriculum_name, oc.oc_start_date, oc.oc_end_date, cr.room_name    \r\n" + 
				"	 ,  (SELECT COUNT(os_id) FROM open_subject os WHERE oc.oc_id = os.oc_id) as subjectCnt    \r\n" + 
				"	 , (SELECT COUNT(student_id) FROM lecture_history h where oc.oc_id=h.oc_id) as studentCnt \r\n" + 
				"	 , (SELECT COUNT(*) FROM lecture_history lh WHERE lh.oc_id = oc.oc_id) deletable\r\n" + 
				" FROM curriculum c, open_curriculum oc, classroom cr \r\n" + 
				" WHERE c.curriculum_id = oc.curriculum_id AND oc.room_id = cr.room_id\r\n" + 
				"	 AND curdate() <  oc.oc_end_date\r\n" + 
				" ORDER BY oc_id";
		return this.jdbcTemplateObject.query(sql, new Open_curriculumMapper1());
	}

	@Override
	public int count(String key, String value) {
		String sql = "SELECT COUNT(*) FROM open_curriculum oc, curriculum c WHERE oc.curriculum_id=c.curriculum_id ";
		if(key.equals("oc_id")) {
			sql += "AND oc_id = ?";
		} else if(key.equals("curriculum_name")) {
			sql += "AND INSTR(curriculum_name, ?) > 0";
		}
		
		if(key.equals("all")) {
			return this.jdbcTemplateObject.queryForObject(sql, Integer.class);
        } else {
        	return this.jdbcTemplateObject.queryForObject(sql, Integer.class, value);
        }
	}
}
