package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Open_subject;
import com.persistence.Open_subjectDAO;

@Service("open_subjectService")
public class Open_subjectServiceImpl implements Open_subjectService {

	@Resource(name="open_subjectDAO")
	private Open_subjectDAO open_subjectDAO;
	
	@Override
	public int addOS(Open_subject os) {
		return this.open_subjectDAO.addOS(os);
	}

	@Override
	public int delOS(String osId) {
		return this.open_subjectDAO.delOS(osId);
	}

	@Override
	public int updateOS(Open_subject os) {
		return this.open_subjectDAO.updateOS(os);
	}

	@Override
	public List<Open_subject> list(String key, String value, int startIdx) {
		return this.open_subjectDAO.list(key, value, startIdx);
	}
	
	@Override
	public List<Open_subject> listNoLimit(String key, String value) {
		return this.open_subjectDAO.listNoLimit(key, value);
	}

	@Override
	public int count(String key, String value) {
		return this.open_subjectDAO.count(key, value);
	}
}
