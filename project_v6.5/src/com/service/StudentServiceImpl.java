package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.domain.Student;
import com.persistence.StudentDAO;

@Service("studentService")
public class StudentServiceImpl implements StudentService {
	
	@Resource(name="studentDAO")
	private StudentDAO studentDAO;

	@Override
	public List<Student> list(String key, String value, int startIdx) {
		return this.studentDAO.list(key, value, startIdx);
	}

	@Override
	public int addStudent(Student st) {
		return this.studentDAO.addStudent(st);
	}

	@Override
	public int delStudent(String student_id) {
		return this.studentDAO.delStudent(student_id);
	}

	@Override
	public int updateStudent(Student st) {
		return this.studentDAO.updateStudent(st);
	}

	@Override
	public int addPicture(Student st) {
		return this.studentDAO.addPicture(st);
	}

	@Override
	public int resetPw(Student st) {
		return this.studentDAO.resetPw(st);
	}

	@Override
	public List<Student> lhList(Student st) {
		return this.studentDAO.lhList(st);
	}

	@Override
	public Student profile(Student st) {
		return this.studentDAO.profile(st);
	}

	@Override
	public int abandonment(Student st) {
		return this.studentDAO.abandonment(st);
	}

	@Override
	public int cancelOC(Student st) {
		return this.studentDAO.cancelOC(st);
	}

	@Override
	public int addLH(Student st) {
		return this.studentDAO.addLH(st);
	}

	@Override
	public int updatePicture(Student st) {
		return this.studentDAO.updatePicture(st);
	}

	@Override
	public int count(String key, String value) {
		return this.studentDAO.count(key, value);
	}

}
