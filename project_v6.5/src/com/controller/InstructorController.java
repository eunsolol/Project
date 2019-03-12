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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Instructor;
import com.domain.Open_curriculum;
import com.domain.Student;
import com.domain.Subject;
import com.service.InstructorService;
import com.service.NoticeService;
import com.service.Open_curriculumService;
import com.service.SubjectService;
import com.service.StudentService;

@Controller
public class InstructorController {
	
	@Autowired
	private ServletContext context;
	
	@Resource(name = "instructorService")
	private InstructorService instructorService;
	@Resource(name = "open_curriculumService")
	private Open_curriculumService open_curriculumService ;
	@Resource(name = "subjectService")
	private SubjectService subjectService;
	@Resource(name = "studentService")
	private StudentService studentService;

	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@RequestMapping("/a/instructor")
	public String instructorList(Model model, String key, String value) {
		
		if(key == null || key.equals("")) {
			key = "all";
			value = "";
		}
		List<Instructor> list = this.instructorService.list(key, value);
		List<Subject> sList = this.subjectService.list();
		model.addAttribute("list", list);
		model.addAttribute("count", list.size());
		model.addAttribute("sList", sList);
		return "admin/a_instructor_1";
	}
	
	@RequestMapping("/a/instructor/info")
	public String instructorInfo(Model model, Instructor i) {
		
		List<Instructor> list = this.instructorService.list("instructor_id",i.getInstructor_id());
		List<Instructor> list2 = this.instructorService.list2("instructor_id",i.getInstructor_id());
		List<Instructor> list3 = this.instructorService.list3("instructor_id",i.getInstructor_id());
		List<Instructor> list4 = this.instructorService.list4("instructor_id",i.getInstructor_id());
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		
		return "admin/a_instructor_2";
	}

	
	@RequestMapping("/a/instructor/add")
	public String addInst(Model model, Instructor i ,@RequestParam("pc_check") String[] pc_check, RedirectAttributes rttr) {
		String txt = "fail";
		
		String instructor_id = this.instructorService.addInstId();
		
		i.setInstructor_id(instructor_id);
		i.setPc_check(pc_check);
		
		int result = this.instructorService.addInst(i, pc_check);
		if (result == 1) {
			txt = "success";
		}

		rttr.addFlashAttribute("result", txt);


		return "redirect:/a/instructor";
	}
	
	
	@RequestMapping("/a/instructor/update")
	public String updateInst(Instructor i, RedirectAttributes rttr) {
		
		String txt = "fail";
		int result = this.instructorService.updateInst(i);
		if (result == 1) {
			txt = "success";
		}
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/a/instructor";
	}

	@RequestMapping("/a/instructor/del")
	public String delInst(String instructor_id, RedirectAttributes rttr) {
		
		String txt = "fail";
		int result = this.instructorService.delInst(instructor_id);
		if (result == 1) {
			txt = "success";
		}
		
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/a/instructor";
	}
	
	@RequestMapping("/a/instructor/pic")
		public String addPic(MultipartFile i_file_name, String instructor_id, RedirectAttributes rttr) throws IOException {
			String txt = "fail";
			
			String uploadPath = this.context.getRealPath("") + "resources/pictures" + File.separator;
			
			String temp = i_file_name.getOriginalFilename();
			String ext = temp.substring(temp.lastIndexOf("."));
			String newFileName = "i_" + instructor_id + ext;
			
			FileCopyUtils.copy(i_file_name.getBytes(), new File(uploadPath + newFileName));
			Instructor i = new Instructor();
			i.setInstructor_id(instructor_id);
			i.setI_file_name(newFileName);
			
			int result = this.instructorService.addPicture(i);
			
			if(result == 1) {
				txt = "success";
			}
			System.out.println(txt);
			
			rttr.addFlashAttribute("result", txt);
			
			System.out.println(uploadPath + newFileName);
			
			return "redirect:/a/instructor";
		}
		
	@RequestMapping(value = "/a/instructor/picModify", method = RequestMethod.POST)
	public String updatePic(MultipartFile i_file_name, String instructor_id, RedirectAttributes rttr) throws IOException {
		String txt = "fail";
		
		String uploadPath = this.context.getRealPath("") + "resources/pictures" + File.separator;
		
		String temp = i_file_name.getOriginalFilename();
		String ext = temp.substring(temp.lastIndexOf("."));
		String newFileName = "s_" + instructor_id + ext;
		
		FileCopyUtils.copy(i_file_name.getBytes(), new File(uploadPath + newFileName));
		
		Instructor i = new Instructor();
		i.setInstructor_id(instructor_id);
		i.setI_file_name(newFileName);
		
		int result = this.instructorService.updatePicture(i);
		
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		
		System.out.println(uploadPath + newFileName);
		
		return "redirect:/a/instructor";
	}
	
	@RequestMapping("/a/instructor/reset")
	public String resetInst(Instructor i, RedirectAttributes rttr) {
		
		String txt = "fail";
		int result = this.instructorService.reset(i);
		if (result == 1) {
			txt = "success";
		}
		
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/a/instructor";
	}
	
	@RequestMapping("/i/profile")
	public String profileInst(Model model, String instructor_id) {

		Instructor info = this.instructorService.profile(instructor_id);
		List<Subject> pcInfo = this.instructorService.pcInfo(instructor_id);
		model.addAttribute("info", info);
		model.addAttribute("pcInfo", pcInfo);
		return "instructor/i_profile";
	}
	
	@RequestMapping("/i/schedule")
	public String scheduleInst(Model model, String instructor_id) {		
		List<Instructor> list2 = this.instructorService.list2("instructor_id",instructor_id);
		List<Instructor> list3 = this.instructorService.list3("instructor_id",instructor_id);
		List<Instructor> list4 = this.instructorService.list4("instructor_id",instructor_id);
		
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		return "instructor/i_schedule_1";
	}
	
	@RequestMapping("/i/schedule/info")
	public String scheduleInfo(Model model, String os_id, String instructor_id) {
		List<Instructor> osInfo = this.instructorService.osInfo(os_id, instructor_id);
		List<Open_curriculum> ocList = this.open_curriculumService.ocList(os_id, instructor_id, 0);
		Student st = new Student(); st.setOc_id(ocList.get(0).getOc_id());
		List<Student> sList = this.studentService.lhList(st);
		model.addAttribute("osInfo", osInfo);
		model.addAttribute("ocList", ocList);
		model.addAttribute("sList", sList);
		model.addAttribute("countSt", sList.size());
		
		return "instructor/i_schedule_2";
	}
	
	

	@RequestMapping("/i/modify")
	public String modifyInst(Instructor i, RedirectAttributes rttr) {
		
		String txt = "fail";
		int result = this.instructorService.modify(i);
		if (result == 1) {
			txt = "success";
		}
		
		rttr.addFlashAttribute("result", txt);
		
		return "redirect:/a/instructor";
	}
	

	
}
