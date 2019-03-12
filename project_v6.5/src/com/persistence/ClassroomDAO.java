package com.persistence;

import java.util.*;
 
import com.domain.*;
 
public interface ClassroomDAO {
 
    // 異쒕젰
    public List<Classroom> list() ;
 
    // �엯�젰
    public int addClassroom(Classroom r) ;
    
    //�닔�젙
    public int updateClassroom(Classroom r) ;
 
    // �궘�젣
    public int delClassroom(String room_id);
    
    // 메인
    public List<Classroom> roomNotice();
}