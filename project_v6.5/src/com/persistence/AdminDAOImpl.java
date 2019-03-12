package com.persistence;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Admin;
import com.mapper.AdminRowMapper;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO {

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;
	
	@Override
	public int modify(Admin a) {
		String sql = "UPDATE admin_\r\n" + 
				" SET admin_pw = ?\r\n" + 
				"    WHERE admin_id = ?\r\n" + 
				"    AND admin_pw = ?";
		return this.jdbcTemplateObject.update(sql, a.getAdmin_newPw(), a.getAdmin_id(), a.getAdmin_pw());
	}

	
	@Override
	public int addAdmin(Admin a) {
		String sql = "INSERT INTO admin_ (admin_id, admin_name, admin_phone, admin_regdate, admin_pw, admin_grade, admin_blind)\r\n" + 
				"	VALUES (?, ?, ?, SYSDATE(), ?, 1, 0)";
		return this.jdbcTemplateObject.update(sql, a.getAdmin_id(), a.getAdmin_name(), a.getAdmin_phone(), a.getAdmin_pw());
	}

	@Override
	public List<Admin> list() {
		String sql = "SELECT admin_id, admin_name, admin_phone, admin_regdate, admin_blind\r\n" + 
				"	FROM admin_ ORDER BY admin_regdate DESC";
		return this.jdbcTemplateObject.query(sql, new AdminRowMapper());
	}

	@Override
	public int resetPw(Admin a) {
		String sql = "UPDATE admin_\r\n" + 
				"	SET admin_pw = ?\r\n" + 
				"    WHERE admin_id = ?";
		return this.jdbcTemplateObject.update(sql, a.getAdmin_pw(), a.getAdmin_id());
	}

	@Override
	public int updateAdmin(Admin a) {
		String sql = "UPDATE admin_\r\n" + 
				"	SET admin_name = ?, admin_phone = ?\r\n" + 
				"    WHERE admin_id = ?";
		return this.jdbcTemplateObject.update(sql, a.getAdmin_name(), a.getAdmin_phone(), a.getAdmin_id());
	}

	@Override
	public int lock(Admin a) {
		String sql = "UPDATE admin_\r\n" + 
				"	SET admin_blind = ?\r\n" + 
				"    WHERE admin_id = ?";
		return this.jdbcTemplateObject.update(sql, a.getAdmin_blind(), a.getAdmin_id());
	}



}
