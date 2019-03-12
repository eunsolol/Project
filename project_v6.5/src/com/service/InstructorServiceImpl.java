package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Instructor;
import com.domain.Subject;
import com.persistence.InstructorDAO;

@Service("instructorService")
public class InstructorServiceImpl implements InstructorService {

	@Resource(name = "instructorDAO")
	private InstructorDAO instructorDAO;

	@Override
	public int modify(Instructor i) {
		int result = this.instructorDAO.modify(i);
		return result;
	}

	@Override
	public int reset(Instructor i) {
		int result = this.instructorDAO.reset(i);
		return result;
	}

	@Override
	public String addInstId() {
		return this.instructorDAO.addInstId();

	}

	@Override
	public int addInst(Instructor i, String[] pc_check) {
		int result = 0;
		result = this.instructorDAO.addInst(i, null);

			for (String s : pc_check) {
				if (s.toString() != null && s.toString() != "") {
					this.addPC(i.getInstructor_id(), s.toString());
				}
			}

		return result;
	}

	@Override
	public int updateInst(Instructor i) {
		int result = this.instructorDAO.updateInst(i);
		return result;
	}

	@Override
	public int delInst(String instructor_id) {
		int result = this.instructorDAO.delInst(instructor_id);
		return result;
	}

	@Override
	public int addPicture(Instructor i) {
		int result = this.instructorDAO.addPicture(i);
		return result;
	}

	public int addPC(String instructor_id, String subject_id) {
		int result = this.instructorDAO.addPC(instructor_id, subject_id);
		return result;
	}

	public int delPC(String instructor_id, String subject_id) {
		int result = this.instructorDAO.delPC(instructor_id, subject_id);
		return result;
	}

	@Override
	public int totalcount() {
		int result = this.instructorDAO.totalcount();
		return result;
	}

	@Override
	public List<Instructor> list(String key, String value) {
		List<Instructor> list = this.instructorDAO.list(key, value);
		return list;
	}

	@Override
	public List<Instructor> list2(String key, String value) {
		List<Instructor> list = this.instructorDAO.list2(key, value);
		return list;
	}

	@Override
	public List<Instructor> list3(String key, String value) {
		List<Instructor> list = this.instructorDAO.list3(key, value);
		return list;
	}

	@Override
	public List<Instructor> list4(String key, String value) {
		List<Instructor> list = this.instructorDAO.list4(key, value);
		return list;
	}
	@Override
	public List<Instructor> osInfo(String key, String value){
		List<Instructor> list = this.instructorDAO.osInfo(key, value);
		return list;
		
	}

	@Override
	public int updatePicture(Instructor i) {
		int result = this.instructorDAO.updatePicture(i);
		return result;
	}
	
	@Override
	public List<Subject> pcInfo(String instructor_id){
		List<Subject> list = this.instructorDAO.pcInfo(instructor_id);
		return list;
	}
	
	public Instructor profile(String instructor_id){ 
		 Instructor i = this.instructorDAO.profile(instructor_id);
		return i;
	}
}
