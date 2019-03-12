package com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Open_curriculum;
import com.domain.Student;
import com.service.Open_curriculumService;
import com.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private ServletContext context;
	
	@Resource(name="studentService")
	private StudentService studentService;
	@Resource(name="open_curriculumService")
	private Open_curriculumService open_curriculumService;
	
	@RequestMapping("/a/student")
	public String list(Model model, String key, String value, String pageNum_) {
		if(key == null || key.equals("")) {
			key = "all";
		}
		if(pageNum_ == null){
			pageNum_ = "1";
		}
		
		int pageNum = Integer.parseInt(pageNum_);
		int startIdx = 10 * (pageNum - 1);
		
		int count = this.studentService.count(key, value);
		int lastPage = (int)Math.ceil(count/(double)10);
		
		List<Student> list = this.studentService.list(key, value, startIdx);
		
		model.addAttribute("key", key);
		model.addAttribute("value", value);
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("totalcount", count);
		return "admin/a_student_1";
	}
	
	@RequestMapping("/a/student/add")
	public String addSt(Student st, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.studentService.addStudent(st);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/student";
	}
	
	@RequestMapping("/a/student/del")
	public String delSt(String student_id, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.studentService.delStudent(student_id);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/student";
	}
	
	@RequestMapping("/a/student/update")
	public String updateSt(Student st, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.studentService.updateStudent(st);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/student";
	}
	
	@RequestMapping(value = "/a/student/pic", method = RequestMethod.POST)
	public String addPic(MultipartFile file_name, Student s, RedirectAttributes rttr) throws IOException {
		String txt = "fail";
		String uploadPath = this.context.getRealPath("") + "resources/pictures" + File.separator;
		String temp = file_name.getOriginalFilename();
		String ext = temp.substring(temp.lastIndexOf("."));
		String newFileName = "s_" + s.getStudent_id() + ext;
		s.setS_file_name(newFileName);
		
		FileCopyUtils.copy(file_name.getBytes(), new File(uploadPath + newFileName));
		
		int result = 0;
		
		if(s.getS_pid() == null) {
			result = this.studentService.addPicture(s);
		} else {
			result = this.studentService.updatePicture(s);
		}
		
		if(result == 1) {
			txt = "success";
		}
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/student";
	}
	
	
	
	@RequestMapping("/a/student/info")
	public String info(Model model, String student_id) {
		List<Student> info = this.studentService.list("student_id", student_id, 0);
		Student st = new Student(); st.setStudent_id(student_id);
		List<Student> lh = this.studentService.lhList(st);
		List<Open_curriculum> ocList = this.open_curriculumService.addLHlist();
		
		model.addAttribute("info", info);
		model.addAttribute("lh", lh);
		model.addAttribute("st", st);
		model.addAttribute("lhCount", lh.size());
		model.addAttribute("ocList", ocList);
		
		return "admin/a_student_2";
	}
	
	@RequestMapping("/a/student/reset")
	public String resetPw(Student st, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.studentService.resetPw(st);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/student/info?student_id="+st.getStudent_id();
	}
	
	@RequestMapping("/a/student/abandonment")
	public String abandonment(Student st, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.studentService.abandonment(st);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/student/info?student_id="+st.getStudent_id();
	}
	
	@RequestMapping("/a/student/cancelOC")
	public String cancelOC(Student st, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.studentService.cancelOC(st);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/student/info?student_id="+st.getStudent_id();
	}
	
	@RequestMapping("/a/student/addLH")
	public String addLH(Student st, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.studentService.addLH(st);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/student/info?student_id="+st.getStudent_id();
	}
	
	
	/*** ������ > ������������ *********************************************************************/
	
	@RequestMapping("/s/profile")
	public String profile(Model model, String student_id) {
		
		Student st = new Student(); st.setStudent_id(student_id);
		Student info = this.studentService.profile(st);
		List<Student> lh = this.studentService.lhList(st);
		
		model.addAttribute("info", info);
		model.addAttribute("lh", lh);
		
		return "student/s_profile";
	}
}
