package com.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.domain.Admin;
import com.domain.Instructor;
import com.domain.Student;
import com.service.LoginService;

@Controller
public class LoginController {

	@Resource(name="loginService")
    private LoginService loginService;
	
	// 로그인(강사, 수강생, 일반관리자)
	@RequestMapping("/index")
    public String index() {
        return "login/login";
    }
	
	// 로그인(마스터 관리자)
	@RequestMapping("/master/index")
    public String indexMaster() {
        return "login/master_login";
    }
	
	
	
	// 수강생 로그인
    @RequestMapping("/login/student")
    public String loginSt(Student st, HttpSession session) {
    	String result = "redirect:/login/loginFail";
        try {
        	Student sLogin = this.loginService.sLogin(st);
            session.setAttribute("login", sLogin);
            
            result = "redirect:/s/index";    
        }catch(DataAccessException e) {
        }
        return result;
    }
    
    // 강사 로그인
    @RequestMapping("/login/instructor")
    public String loginI(Instructor i, HttpSession session) {
    	String result = "redirect:/login/loginFail";
        try {
        	Instructor iLogin = this.loginService.iLogin(i);
            session.setAttribute("login", iLogin);
            
            result = "redirect:/i/index";    
        }catch(DataAccessException e) {
        }
        return result;
    }
    
    // 관리자 로그인
    @RequestMapping("/login/admin")
    public String loginAdmin(Admin a, HttpSession session) {
    	String result = "redirect:/login/loginFail";
        try {
        	Admin aLogin = this.loginService.aLogin(a);
            session.setAttribute("login", aLogin);
            
            result = "redirect:/a/index";    
        }catch(DataAccessException e) {
        }
        return result;
    }

    // 마스터관리자 로그인
    @RequestMapping("/login/master")
    public String loginMaster(Admin a, HttpSession session) {
    	String result = "redirect:/login/loginFail";
        try {
        	Admin aLogin = this.loginService.mLogin(a);
            session.setAttribute("login", aLogin);
            
            result = "redirect:/m/index";    
        }catch(DataAccessException e) {
        }
        return result;
    }
    
    
    
    @RequestMapping("/login/loginFail")
    public String loginFail() {
        return "login/loginFailForm";
    }
    
    
    
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "login/logout";
    }
    
    @RequestMapping("/master/logout")
    public String logoutMaster(HttpSession session) {
        session.invalidate();
        return "login/master_logout";
    }
}
