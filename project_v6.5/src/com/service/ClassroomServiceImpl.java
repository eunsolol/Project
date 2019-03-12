package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.domain.Classroom;
import com.persistence.ClassroomDAO;

@Repository("classroomService")
public class ClassroomServiceImpl implements ClassroomService {

	@Resource(name = "classroomDAO")
	private ClassroomDAO classroomDAO;
	
	//異쒕젰
	@Override
	public List<Classroom> list() {
		return this.classroomDAO.list();
	}

	//�엯�젰
	@Override
	public int addClassroom(Classroom r) {
		return this.classroomDAO.addClassroom(r);
	}

	//�닔�젙
	@Override
	public int updateClassroom(Classroom r) {
		return this.classroomDAO.updateClassroom(r);
	}

	//�궘�젣
	@Override
	public int delClassroom(String room_id) {
		return this.classroomDAO.delClassroom(room_id);
	}

	@Override
	public List<Classroom> roomNotice() {
		return this.classroomDAO.roomNotice();
	}

}
