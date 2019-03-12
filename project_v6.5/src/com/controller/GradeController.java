package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domain.Exam;
import com.domain.Instructor;
import com.domain.Open_curriculum;
import com.domain.Open_subject;
import com.domain.Student;
import com.service.ExamService;
import com.service.InstructorService;
import com.service.Open_curriculumService;
import com.service.Open_subjectService;
import com.service.StudentService;

@Controller
public class GradeController {

	@Resource(name="examService")
	private ExamService examService;
	@Resource(name="studentService")
	private StudentService studentService;
	@Resource(name="open_curriculumService")
	private Open_curriculumService open_curriculumService;
	@Resource(name = "instructorService")
	private InstructorService instructorService;
	@Resource(name="open_subjectService")
	private Open_subjectService open_subjectService;
	
	@RequestMapping("/a/grade/student")
	public String listStudent(Model model, String key, String value, String pageNum_) {
		if(key == null || key.equals("")) {
			key = "all";
		}
		if(pageNum_ == null){
			pageNum_ = "1";
		}
		
		int pageNum = Integer.parseInt(pageNum_);
		int startIdx = 10 * (pageNum - 1);
		int totalcount = this.studentService.count("all", null);
		int count = this.studentService.count(key, value);
		
		int lastPage = (int)Math.ceil(count/(double)10);
		
		List<Student> list = this.studentService.list(key, value, startIdx);
		
		model.addAttribute("key", key);
		model.addAttribute("value", value);
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("totalcount", totalcount);
		
		return "admin/a_grade_student_1";
	}
	
	@RequestMapping("/a/grade/student/info")
	public String infoStudent(Model model, String student_id) {
		List<Student> info = this.studentService.list("student_id", student_id, 0);
		Student st = new Student(); st.setStudent_id(student_id);
		List<Student> lh = this.studentService.lhList(st);
		
		model.addAttribute("info", info);
		model.addAttribute("lh", lh);
		model.addAttribute("lhCount", lh.size());
		return "admin/a_grade_student_2";
	}
	
	@RequestMapping("/a/grade/student/info2")
	public String listGradeSt(Model model, String student_id, String oc_id) {
		List<Student> info = this.studentService.list("student_id", student_id, 0);
		
		Student st = new Student(); st.setStudent_id(student_id); st.setOc_id(oc_id);
		List<Student> lh = this.studentService.lhList(st);
		Exam e = new Exam(); e.setStudent_id(student_id); e.setOc_id(oc_id);
		List<Exam> gList = this.examService.aCheckStGrade(e);
		
		model.addAttribute("info", info);
		model.addAttribute("lh", lh);
		model.addAttribute("gList", gList);
		model.addAttribute("gCount", gList.size());
		return "admin/a_grade_student_3";
	}
	
	
	
	@RequestMapping("/a/grade/oc")
	public String listOC(Model model, String key, String value, String pageNum_) {
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
		
		model.addAttribute("key", key);
		model.addAttribute("value", value);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("lastPage", lastPage);
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		
		return "admin/a_grade_oc_1";
	}
	
	@RequestMapping("/a/grade/oc/info")
	public String infoOC(Model model, String oc_id) {
		List<Open_curriculum> info = this.open_curriculumService.list("oc_id", oc_id, 0);
		Exam e = new Exam(); e.setOc_id(oc_id);
		List<Exam> eList = this.examService.aCheckPoint(e);
		
		model.addAttribute("info", info);
		model.addAttribute("oc_id", oc_id);
		
		model.addAttribute("eList", eList);
		model.addAttribute("eCount", eList.size());
		return "admin/a_grade_oc_2";
	}
	
	@RequestMapping("/a/grade/oc/info2")
	public String listGradeOS(Model model, String oc_id, String ex_id) {
		List<Open_curriculum> info = this.open_curriculumService.list("oc_id", oc_id, 0);
		Exam e = new Exam(); e.setOc_id(oc_id); e.setEx_id(ex_id);
		List<Exam> eList = this.examService.aCheckPoint(e);
		List<Exam> gList = this.examService.aCheckGrade(e);
		
		model.addAttribute("info", info);
		model.addAttribute("eList", eList);
		model.addAttribute("gList", gList);
		model.addAttribute("gCount", gList.size());
		return "admin/a_grade_oc_3";
	}
	
	
	
	
	
	/** ������ > ������ȸ *************************************************************************/
	@RequestMapping("/s/grade")
	public String profile(Model model, String student_id) {
		Student st = new Student(); st.setStudent_id(student_id);
		List<Student> lh = this.studentService.lhList(st);		
		
		model.addAttribute("lh", lh);
		
		return "student/s_grade_1";
	}
	
	@RequestMapping("/s/grade2")
	public String grade(Model model, String student_id, String oc_id) {
		// List<Student> info = this.studentService.list("student_id", student_id);
		Student st = new Student(); st.setStudent_id(student_id); st.setOc_id(oc_id);
		List<Student> lh = this.studentService.lhList(st);
		Exam e = new Exam(); e.setStudent_id(student_id); e.setOc_id(oc_id);
		List<Exam> gList = this.examService.aCheckStGrade(e);
		
		//model.addAttribute("info", info);
		model.addAttribute("lh", lh);
		model.addAttribute("gList", gList);
		return "student/s_grade_2";
	}
	
	/** ������ > ������ȸ *************************************************************************/	
	@RequestMapping("/i/point")
	public String pointInst(Model model, String instructor_id) {
		List<Instructor> list2 = this.instructorService.list2("instructor_id",instructor_id);
		List<Instructor> list3 = this.instructorService.list3("instructor_id",instructor_id);
		List<Instructor> list4 = this.instructorService.list4("instructor_id",instructor_id);
		
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		return "instructor/i_point_1";
	}
	
	@RequestMapping("/i/point/info")
	public String pointInfo(Model model, String instructor_id, String os_id) {
		Exam e = new Exam();
		e.setInstructor_id(instructor_id);
		e.setOs_id(os_id);
		List<Open_subject> info = this.open_subjectService.listNoLimit("os_id",os_id);
		List<Exam> point = this.examService.iCheckPoint(e);
		model.addAttribute("info", info);
		model.addAttribute("point", point);
		return "instructor/i_point_2";
	}
	
	@RequestMapping("/i/grade")
	public String gradeInst(Model model, String instructor_id) {
		List<Instructor> list2 = this.instructorService.list2("instructor_id",instructor_id);
		List<Instructor> list3 = this.instructorService.list3("instructor_id",instructor_id);
		List<Instructor> list4 = this.instructorService.list4("instructor_id",instructor_id);
		
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		return "instructor/i_grade_1";
	}
	
	@RequestMapping("/i/grade/info")
	public String gradeInfo(Model model, String instructor_id, String os_id) {
		Exam e = new Exam();
		e.setInstructor_id(instructor_id);
		e.setOs_id(os_id);
		List<Open_subject> info = this.open_subjectService.listNoLimit("os_id",os_id);
		List<Exam> point = this.examService.iCheckPoint(e);
		model.addAttribute("info", info);
		model.addAttribute("os_id", os_id);
		model.addAttribute("point", point);
		return "instructor/i_grade_2";
	}
	
	@RequestMapping("/i/grade/info2")
	public String gradeInfo2(Model model, String instructor_id ,String os_id, String ex_id) {
		List<Open_subject> info = this.open_subjectService.listNoLimit("os_id",os_id);
		Exam e = new Exam();
		e.setInstructor_id(instructor_id);
		e.setOs_id(os_id); e.setEx_id(ex_id);
		List<Exam> point = this.examService.iCheckPoint(e);
		List<Exam> gList = this.examService.aCheckGrade(e);
		
		model.addAttribute("info", info);
		model.addAttribute("point", point);
		model.addAttribute("gList", gList);
		model.addAttribute("gCount", gList.size());
		return "instructor/i_grade_3";
	}
	
}
