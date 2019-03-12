package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.domain.Curriculum;
import com.persistence.CurriculumDAO;

@Repository("curriculumService")
public class CurriculumServiceImpl implements CurriculumService {

	@Resource(name = "curriculumDAO")
	private CurriculumDAO curriculumDAO;
	
	//출력
	@Override
	public List<Curriculum> list() {
		return this.curriculumDAO.list();
	}

	//입력
	@Override
	public int addCur(Curriculum c) {
		return this.curriculumDAO.addCur(c);
	}

	//수정
	@Override
	public int updateCur(Curriculum c) {
		return this.curriculumDAO.updateCur(c);
	}

	//삭제
	@Override
	public int delCur(String Curriculum_id) {
		return this.curriculumDAO.delCur(Curriculum_id);
	}

}
