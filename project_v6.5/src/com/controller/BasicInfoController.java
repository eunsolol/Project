package com.controller;

import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Book;
import com.domain.Classroom;
import com.domain.Curriculum;
import com.domain.Subject;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.service.BookService;
import com.service.ClassroomService;
import com.service.CurriculumService;
import com.service.SubjectService;

@Controller
public class BasicInfoController {

	@Resource(name="bookService")
	private BookService bookService;
	@Resource(name="subjectService")
	private SubjectService subjectService;
	@Resource(name="curriculumService")
	private CurriculumService curriculumService;
	@Resource(name="classroomService")
	private ClassroomService classroomService;
	
	
	// ���� ######################################################################
	@RequestMapping("/a/book")
	public String bookList(Model model) {
		
		List<Book> list = this.bookService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("totalcount", list.size());
		return "admin/a_basicInfo_book";
	}
	
	@RequestMapping("/a/book/add")
	public String addBook(Book b, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.bookService.addBook(b);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/book";
	}
	
	@RequestMapping("/a/book/del")
	public String delBook(String book_id, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.bookService.delBook(book_id);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/book";
	}
	
	@RequestMapping("/a/book/update")
	public String updateBook(Book b, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.bookService.updateBook(b);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/book";
	}
	
	/*@RequestMapping("/a/book/info")
	public ResponseEntity<String> infoBook(String isbn) throws IOException{
		
		String str = String.format(
	    		"http://book.interpark.com/api/search.api?"
	    		+ "key=7A548DA72C42379357EA9A3CEC4C16E70DFCB21571239C4BE7580E023521A7CA"
	    		+ "&query=%s&queryType=isbn&output=json", isbn);
	    
		URL url = new URL(str);
	    JSONTokener tokener = new JSONTokener(url.openStream());
	    JSONObject json_ = new JSONObject(tokener);
	    
	    // String json = json_.toString();
	    
	    
	    
	    ObjectMapper mapper = new ObjectMapper();
	    Map<String, Object> temp = mapper.readValue(url.openStream(), Map.class);
	    
	    System.out.println(temp);
	    //String json = temp.toString();		
	    //System.out.println(json);
	    
	    HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "application/json;charset=UTF-8");
		
		return new ResponseEntity<String>(temp, headers, HttpStatus.OK);
	}*/
	
	
	@RequestMapping("/a/book/info")
	public @ResponseBody Map<?, ?> infoBook(String isbn) throws IOException{
		
		String str = String.format(
	    		"http://book.interpark.com/api/search.api?"
	    		+ "key=7A548DA72C42379357EA9A3CEC4C16E70DFCB21571239C4BE7580E023521A7CA"
	    		+ "&query=%s&queryType=isbn&output=json", isbn);
	    
		URL url = new URL(str);
	    
	    
	    ObjectMapper mapper = new ObjectMapper();
	    Map<?, ?> temp = mapper.readValue(url.openStream(), Map.class);
	    
	    // System.out.println(temp);
		
		return temp;
	}
	
	
	/*@RequestMapping(value = "/a/book/info", produces="application/json;charset=UTF-8")
	public @ResponseBody JSONObject infoBook(String isbn) throws IOException{
		
		String str = String.format(
				"http://book.interpark.com/api/search.api?"
						+ "key=7A548DA72C42379357EA9A3CEC4C16E70DFCB21571239C4BE7580E023521A7CA"
						+ "&query=%s&queryType=isbn&output=json", isbn);
		
		URL url = new URL(str);
		JSONTokener tokener = new JSONTokener(url.openStream());
		JSONObject json_ = new JSONObject(tokener);
		
		// String json = json_.toString();
		
		return json_;
	}*/
	
	
	// ���� ######################################################################
	@RequestMapping("/a/subject")
	public String subjectList(Model model) {
		List<Subject> list = this.subjectService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("totalcount", list.size());
		return "admin/a_basicInfo_subject";
	}
	
	@RequestMapping("/a/subject/add")
	public String addSubject(Subject s, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.subjectService.addSub(s);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/subject";
	}
	
	@RequestMapping("/a/subject/del")
	public String delSubject(String subject_id, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.subjectService.delSub(subject_id);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/subject";
	}
	
	@RequestMapping("/a/subject/update")
	public String updateSubject(Subject s, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.subjectService.updateSub(s);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/subject";
	}
	
	
	// ���� ######################################################################
	@RequestMapping("/a/curriculum")
	public String curriculumList(Model model) {
		List<Curriculum> list = this.curriculumService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("totalcount", list.size());
		return "admin/a_basicInfo_curriculum";
	}
	
	@RequestMapping("/a/curriculum/add")
	public String addCurriculum(Curriculum c, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.curriculumService.addCur(c);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/curriculum";
	}
	
	@RequestMapping("/a/curriculum/del")
	public String delCurriculum(String curriculum_id, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.curriculumService.delCur(curriculum_id);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/curriculum";
	}
	
	@RequestMapping("/a/curriculum/update")
	public String updateCurriculum(Curriculum c, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.curriculumService.updateCur(c);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/curriculum";
	}
	
	// ���ǽ� ######################################################################
	@RequestMapping("/a/classroom")
	public String classroomList(Model model) {
		List<Classroom> list = this.classroomService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("totalcount", list.size());
		return "admin/a_basicInfo_room";
	}
	
	@RequestMapping("/a/classroom/add")
	public String addClassroom(Classroom r, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.classroomService.addClassroom(r);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/classroom";
	}
	
	@RequestMapping("/a/classroom/del")
	public String delClassroom(String room_id, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.classroomService.delClassroom(room_id);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/classroom";
	}
	
	@RequestMapping("/a/classroom/update")
	public String updateClassroom(Classroom r, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.classroomService.updateClassroom(r);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/classroom";
	}
	
}
