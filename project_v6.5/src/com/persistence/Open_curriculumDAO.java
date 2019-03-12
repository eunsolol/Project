package com.persistence;

import java.util.List;

import com.domain.Open_curriculum;

public interface Open_curriculumDAO {

	public int addOC(Open_curriculum oc);
	
	public int updateOC(Open_curriculum oc);
	
	public int delOC(String oc_id);

	public List<Open_curriculum> list(String key, String value, int startIdx);
	public List<Open_curriculum> ocList(String os_id, String instructor_id, int startIdx);
	public List<Open_curriculum> addLHlist();
	
	public List<Open_curriculum> addOSlist();
	
	public int count(String key, String value);
}
