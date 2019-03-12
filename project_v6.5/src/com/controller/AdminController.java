package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.domain.Admin;
import com.service.AdminService;

@Controller
public class AdminController {
	
	@Resource(name="adminService")
	private AdminService adminService;
	
	@RequestMapping("/m/index")
	public String masterMain(Model model) {
		return "masterAdmin/master_main";
	}
	
	@RequestMapping("/m/admin/list")
	public String adminList(Model model) {
		List<Admin> list = this.adminService.list();
		model.addAttribute("list", list);
		
		return "masterAdmin/master_adminList";
	}
	
	@RequestMapping("/m/admin/add")
	public String addAdmin(Admin a, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.adminService.addAdmin(a);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/m/admin/list";
	}
	
	@RequestMapping("/m/admin/resetPw")
	public String resetPw(Admin a, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.adminService.resetPw(a);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/m/admin/list";
	}
	
	@RequestMapping("/m/admin/lock")
	public String lock(Admin a, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.adminService.lock(a);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/m/admin/list";
	}
	
	@RequestMapping("/m/admin/update")
	public String updateAdmin(Admin a, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.adminService.updateAdmin(a);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/m/admin/list";
	}
	
	@RequestMapping("/m/admin/modify")
	public String modifyMasterPw(Admin a, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.adminService.modify(a);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/m/index";
	}
	
	
	
	
	@RequestMapping("/a/profile")
	public String infoAdmin(Admin a, RedirectAttributes rttr) {
		return "admin/a_profile";
	}
	
	@RequestMapping("/a/profile/modify")
	public String modifyAdminPw(Admin a, RedirectAttributes rttr) {
		String txt = "fail";
		int result = this.adminService.modify(a);
		if(result == 1) {
			txt = "success";
		}
		System.out.println(txt);
		
		rttr.addFlashAttribute("result", txt);
		return "redirect:/a/profile";
	}
}