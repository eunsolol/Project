package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Book;
import com.domain.Instructor;
import com.domain.Open_curriculum;
import com.domain.Open_subject;
import com.domain.Subject;
import com.service.BookService;
import com.service.InstructorService;
import com.service.Open_curriculumService;
import com.service.Open_subjectService;
import com.service.SubjectService;

@Controller
public class Open_subjectController {

	@Resource(name="open_subjectService")
	private Open_subjectService open_subjectService;
	@Resource(name="open_curriculumService")
	private Open_curriculumService open_curriculumService;
	@Resource(name="bookService")
	private BookService bookService;
	@Resource(name="subjectService")
	private SubjectService subjectService;
	@Resource(name="instructorService")
	private InstructorService instructorService;
	
	@RequestMapping("/a/os")
	public String list(Model model, String key, String value, String pageNum_) {
		
		if(key == null || key.equals("")) {
			key = "all";
		}
		if(pageNum_ == null){
			pageNum_ = "1";
		}
		
		int pageNum = Integer.parseInt(pageNum_);
		int startIdx = 10 * (pageNum - 1);
		
		int count = this.open_subjectService.count(key, value);
		int lastPage = (int)Math.ceil(count/(double)10);
		
		List<Open_subject> list = this.open_subjectService.list(key, value, startIdx);
		
		List<Open_curriculum> ocList = this.open_curriculumService.addOSlist();
		List<Book> bList = this.bookService.list();
		List<Subject> sList = this.subjectService.list();
		List<Instructor> iList = this.instructorService.list("all", null);
		
		model.addAttribute("key", key);
		model.addAttribute("value", value);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		model.addAttribute("ocList", ocList);
		model.addAttribute("bList", bList);
		model.addAttribute("sList", sList);
		model.addAttribute("iList", iList);
		
		return "admin/a_openSubject";
	}
	
	@RequestMapping("/a/os/add")
	public String addOS(Open_subject os, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.open_subjectService.addOS(os);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/os";
	}
	
	@RequestMapping("/a/os/del")
	public String delOS(String os_id, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.open_subjectService.delOS(os_id);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/os";
	}
	
	@RequestMapping("/a/os/update")
	public String updateOS(Open_subject os, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.open_subjectService.updateOS(os);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/os";
	}
}
