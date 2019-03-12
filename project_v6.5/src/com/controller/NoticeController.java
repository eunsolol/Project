package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Classroom;
import com.domain.Notice;
import com.service.ClassroomService;
import com.service.NoticeService;

@Controller
public class NoticeController {

	@Resource(name="noticeService")
	private NoticeService noticeService;
	@Resource(name="classroomService")
	private ClassroomService classroomService;
	
	// 강의실별 진행상황 출력 필요
	@RequestMapping("/a/index")
	public String list(Model model) {
		List<Notice> list = this.noticeService.list();
		List<Classroom> cList = this.classroomService.roomNotice();
		model.addAttribute("list", list);
		model.addAttribute("cList", cList);
		model.addAttribute("totalcount", list.size());
		return "admin/a_main";
	}
	
	@RequestMapping("/a/notice")
	public String listNotice(Model model) {
		
		List<Notice> list = this.noticeService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("totalcount", list.size());
		
		return "admin/a_notice";
	}
	
	@RequestMapping("/a/notice/add")
	public String addNotice(Notice n, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.noticeService.addNotice(n);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/notice";
	}
	
	@RequestMapping("/a/notice/del")
	public String delNotice(String notice_id, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.noticeService.delNotice(notice_id);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/notice";
	}
	
	@RequestMapping("/a/notice/update")
	public String updateNotice(Notice n, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.noticeService.updateNotice(n);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/notice";
	}
	
	@RequestMapping("/i/index")
	public String mainInst(Model model) {
		List<Notice> list = this.noticeService.list();
		model.addAttribute("list", list);
		model.addAttribute("totalcount", list.size());
		return "instructor/i_main";
	}
	
	
	@RequestMapping("/s/index")
	public String listNotice_St(Model model) {
		
		List<Notice> list = this.noticeService.list();
		
		model.addAttribute("list", list);
		model.addAttribute("totalcount", list.size());
		
		return "student/s_main";
	}
}
