package com.persistence;

import java.util.*;
 
import com.domain.*;
 
public interface BookDAO {
 
    // 출력
    public List<Book> list() ;
 
    // 입력
    public int addBook(Book b) ;
    
    // 수정
    public int updateBook(Book b) ;
 
    // 삭제
    public int delBook(String book_id);
    
}