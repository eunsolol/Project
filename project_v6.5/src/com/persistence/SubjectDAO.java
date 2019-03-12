package com.persistence;

import java.util.*;
 
import com.domain.*;
 
public interface SubjectDAO {
 
    // 출력
    public List<Subject> list() ;
 
    // 입력
    public int addSub(Subject s) ;
    
    //수정
    public int updateSub(Subject s) ;
 
    // 삭제
    public int delSub(String subject_id);
    
}