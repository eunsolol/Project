package com.service;

import java.util.List;

import com.domain.Book;

public interface BookService {

    // 출력
    public List<Book> list() ;
 
    // 입력
    public int addBook(Book b) ;
    
    // 수정
    public int updateBook(Book b) ;
 
    // 삭제
    public int delBook(String book_id);
}
