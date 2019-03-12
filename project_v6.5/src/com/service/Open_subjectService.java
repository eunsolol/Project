package com.service;

import java.util.List;

import com.domain.Open_subject;

public interface Open_subjectService {

	// ���� ���� ���
	public int addOS(Open_subject os);

	// ���� ���� ����
	public int delOS(String osId);
	
	// ���� ���� ����
	public int updateOS(Open_subject os);
	
	// ���� ���� ���(�˻�)
	public List<Open_subject> list(String key, String value, int startIdx);
	
	public List<Open_subject> listNoLimit(String key, String value);
	
	public int count(String key, String value);
}
