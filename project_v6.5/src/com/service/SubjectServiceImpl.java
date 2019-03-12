package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.domain.Subject;
import com.persistence.SubjectDAO;

@Repository("subjectService")
public class SubjectServiceImpl implements SubjectService {

	@Resource(name = "subjectDAO")
	private SubjectDAO subjectDAO;
	
	//출력
	@Override
	public List<Subject> list() {
		return this.subjectDAO.list();
	}

	//입력
	@Override
	public int addSub(Subject s) {
		return this.subjectDAO.addSub(s);
	}

	//수정
	@Override
	public int updateSub(Subject s) {
		return this.subjectDAO.updateSub(s);
	}

	//삭제
	@Override
	public int delSub(String Subject_id) {
		return this.subjectDAO.delSub(Subject_id);
	}

}
