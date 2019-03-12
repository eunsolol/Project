package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Classroom;
import com.domain.Curriculum;
import com.domain.Open_curriculum;
import com.domain.Open_subject;
import com.domain.Student;
import com.service.ClassroomService;
import com.service.CurriculumService;
import com.service.Open_curriculumService;
import com.service.Open_subjectService;
import com.service.StudentService;

@Controller
public class Open_curriculumController {
	
	@Resource(name="open_curriculumService")
	private Open_curriculumService open_curriculumService;
	@Resource(name="curriculumService")
	private CurriculumService curriculumService;
	@Resource(name="open_subjectService")
	private Open_subjectService open_subjectService;
	@Resource(name="studentService")
	private StudentService studentService;
	@Resource(name="classroomService")
	private ClassroomService classroomService;

	@RequestMapping("/a/oc")
	public String open_curriculumList(Model model, String key, String value, String pageNum_) {
		
		if(key == null || key.equals("")) {
			key = "all";
			value = "";
		}
		if(pageNum_ == null){
			pageNum_ = "1";
		}
		
		int pageNum = Integer.parseInt(pageNum_);
		int startIdx = 10 * (pageNum - 1);
		
		int count = this.open_curriculumService.count(key, value);
		int lastPage = (int)Math.ceil(count/(double)10);
		
		List<Open_curriculum> list = this.open_curriculumService.list(key, value, startIdx);
		List<Curriculum> cList = this.curriculumService.list();
		List<Classroom> crList = this.classroomService.list();
		
		model.addAttribute("key", key);
		model.addAttribute("value", value);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("lastPage", lastPage);
		
		model.addAttribute("list", list);
		model.addAttribute("cList", cList);
		model.addAttribute("crList", crList);
		model.addAttribute("count", count);
		
		return "admin/a_openCurriculum_1";
	}
	
	@RequestMapping("/a/oc/add")
	public String addOC(Open_curriculum oc, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.open_curriculumService.addOC(oc);
		if (result == 1) {
			txt = "success";
		}

		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/oc";
	}
	
	@RequestMapping("/a/oc/del")
	public String delOC(String oc_id, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.open_curriculumService.delOC(oc_id);
		if (result == 1) {
			txt = "success";
		}
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/oc?result="+txt;
	}
	
	@RequestMapping("/a/oc/update")
	public String updateOC(Open_curriculum oc, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.open_curriculumService.updateOC(oc);
		if (result == 1) {
			txt = "success";
		}
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/oc";
	}
	
	
	
	@RequestMapping("/a/oc/info")
	public String info(Model model, String oc_id) {
		
		List<Open_curriculum> info = this.open_curriculumService.list("oc_id", oc_id, 0);
		List<Open_subject> oslist = this.open_subjectService.listNoLimit("oc_id",oc_id);
		Student st = new Student(); st.setOc_id(oc_id);
		List<Student> sList = this.studentService.lhList(st);
		
		model.addAttribute("info", info);
		model.addAttribute("oslist", oslist);
		model.addAttribute("countOS", oslist.size());
		model.addAttribute("sList", sList);
		model.addAttribute("countSt", sList.size());
		
		return "admin/a_openCurriculum_2";
	}
}
