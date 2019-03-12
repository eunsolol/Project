package com.persistence;

import java.util.List;

import com.domain.Notice;

public interface NoticeDAO {
	
	// 출력
    public List<Notice> list() ;
 
    // 입력
    public int addNotice(Notice n) ;
    
    // 수정
    public int updateNotice(Notice n) ;
 
    // 삭제
    public int delNotice(String notice_id);

}
