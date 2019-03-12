package com.service;

import java.util.List;

import com.domain.Curriculum;

public interface CurriculumService {

    // 출력
    public List<Curriculum> list() ;
 
    // 입력
    public int addCur(Curriculum c) ;
    
    // 수정
    public int updateCur(Curriculum c) ;
 
    // 삭제
    public int delCur(String curriculum_id);
}
