package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.domain.Notice;
import com.persistence.NoticeDAO;

@Repository("noticeService")
public class NoticeServiceImpl implements NoticeService {
	
	@Resource(name="noticeDAO")
	private NoticeDAO noticeDAO;

	@Override
	public List<Notice> list() {
		return this.noticeDAO.list();
	}

	@Override
	public int addNotice(Notice n) {
		return this.noticeDAO.addNotice(n);
	}

	@Override
	public int updateNotice(Notice n) {
		return this.noticeDAO.updateNotice(n);
	}

	@Override
	public int delNotice(String notice_id) {
		return this.noticeDAO.delNotice(notice_id);
	}

}
