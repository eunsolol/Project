package com.service;

import java.util.List;

import com.domain.Classroom;

public interface ClassroomService {

    // 異쒕젰
    public List<Classroom> list() ;
 
    // �엯�젰
    public int addClassroom(Classroom r) ;
    
    // �닔�젙
    public int updateClassroom(Classroom r) ;
 
    // �궘�젣
    public int delClassroom(String room_id);
    
    public List<Classroom> roomNotice();
}
