package com.persistence;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Notice;
import com.mapper.NoticeRowMapper;

@Repository("noticeDAO")
public class NoticeDAOImpl implements NoticeDAO {
	
	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;

	@Override
	public List<Notice> list() {
		String sql = "SELECT notice_id, admin_id, content, notice_regdate \r\n" + 
				"	FROM notice\r\n" + 
				"	ORDER BY notice_id DESC";
		return this.jdbcTemplateObject.query(sql, new NoticeRowMapper());
	}

	@Override
	public int addNotice(Notice n) {
		String sql = "INSERT INTO notice (notice_id, admin_id, content, notice_regdate)\r\n" + 
				"	VALUES ((SELECT CONCAT('N', LPAD(IFNULL(SUBSTR(MAX(notice_id), 2), 0) + 1, 2, 0)) \r\n" + 
				"	AS newId FROM notice n), ?, ?, curdate())";
		return this.jdbcTemplateObject.update(sql, n.getAdmin_id(), n.getContent());
	}

	@Override
	public int updateNotice(Notice n) {
		String sql = "UPDATE notice\r\n" + 
				"	SET content = ?\r\n" + 
				"	WHERE notice_id = ?";
		return this.jdbcTemplateObject.update(sql, n.getContent(), n.getNotice_id());
	}

	@Override
	public int delNotice(String notice_id) {
		String sql = "DELETE  FROM notice WHERE notice_id = ?";
		return this.jdbcTemplateObject.update(sql, notice_id);
	}

}
