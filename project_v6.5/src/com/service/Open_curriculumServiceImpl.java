package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Open_curriculum;
import com.persistence.Open_curriculumDAO;

@Service("open_curriculumService")
public class Open_curriculumServiceImpl implements Open_curriculumService {

	@Resource(name="open_curriculumDAO")
	private Open_curriculumDAO open_curriculumDAO;
	
	@Override
	public int addOC(Open_curriculum oc) {
		int result = this.open_curriculumDAO.addOC(oc);
		return result;
	}

	@Override
	public int updateOC(Open_curriculum oc) {
		int result = this.open_curriculumDAO.updateOC(oc);
		return result;
	}
	
	@Override
	public int delOC(String oc_id) {
		int result = this.open_curriculumDAO.delOC(oc_id);
		return result;
	}

	@Override
	public List<Open_curriculum> list(String key, String value, int startIdx) {
		List<Open_curriculum> list = this.open_curriculumDAO.list(key,value,startIdx);
		return list;
	}
	public List<Open_curriculum> ocList(String os_id, String instructor_id, int startIdx){
		List<Open_curriculum> list = this.open_curriculumDAO.ocList(os_id,instructor_id,startIdx);
		return list;
	}

	@Override
	public List<Open_curriculum> addLHlist() {
		return this.open_curriculumDAO.addLHlist();
	}

	@Override
	public List<Open_curriculum> addOSlist() {
		return this.open_curriculumDAO.addOSlist();
	}

	@Override
	public int count(String key, String value) {
		return this.open_curriculumDAO.count(key, value);
	}


}
