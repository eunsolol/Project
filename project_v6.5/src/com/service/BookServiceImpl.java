package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.domain.Book;
import com.persistence.BookDAO;

@Repository("bookService")
public class BookServiceImpl implements BookService {

	@Resource(name = "bookDAO")
	private BookDAO bookDAO;
	
	@Override
	public List<Book> list() {
		return this.bookDAO.list();
	}

	@Override
	public int addBook(Book b) {
		return this.bookDAO.addBook(b);
	}

	@Override
	public int updateBook(Book b) {
		return this.bookDAO.updateBook(b);
	}

	@Override
	public int delBook(String book_id) {
		return this.bookDAO.delBook(book_id);
	}

}
