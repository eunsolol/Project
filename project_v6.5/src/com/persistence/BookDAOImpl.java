package com.persistence;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.domain.Book;
import com.mapper.BookRowMapper;

@Repository("bookDAO")
public class BookDAOImpl implements BookDAO {

	@Resource(name="jdbcTemplate")
	private JdbcTemplate jdbcTemplateObject;
	
	@Override
	public List<Book> list() {
		String sql="SELECT book_id,book_name,isbn,(SELECT COUNT(*) FROM open_subject os\r\n" + 
				"WHERE os.book_id = b.book_id) deletable\r\n" + 
				"FROM book b\r\n" + 
				"ORDER BY book_id";
		return this.jdbcTemplateObject.query(sql, new BookRowMapper());
	}

	@Override
	public int addBook(Book b) {
		String sql = "INSERT INTO book(book_id,book_name,isbn)\r\n" + 
				"VALUES((SELECT CONCAT('B',LPAD(IFNULL(SUBSTR(MAX(book_id),2),0)+1,2,0)) AS newId\r\n" + 
				"FROM book b), ?, ?)";
		return this.jdbcTemplateObject.update(sql, b.getBook_name(), b.getIsbn());
	}

	@Override
	public int updateBook(Book b) {
		String sql = "UPDATE book \r\n" + 
				"SET book_name = ?, isbn = ?\r\n" + 
				"WHERE book_id = ?";
		return this.jdbcTemplateObject.update(sql, b.getBook_name(), b.getIsbn(), b.getBook_id());
	}

	@Override
	public int delBook(String book_id) {
		String sql = "DELETE FROM book\r\n" + 
				"WHERE book_id = ?";
		return this.jdbcTemplateObject.update(sql, book_id);
	}

}
