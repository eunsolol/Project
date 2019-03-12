package com.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.domain.Admin;
import com.domain.Instructor;
import com.domain.Student;
import com.persistence.LoginDAO;

@Repository("loginService")
public class LoginServiceImpl implements LoginService {
	
	@Resource(name="loginDAO")
	private LoginDAO loginDAO;

	@Override
	public Admin aLogin(Admin a) {
		return this.loginDAO.aLogin(a);
	}

	@Override
	public Admin mLogin(Admin a) {
		return this.loginDAO.mLogin(a);
	}

	@Override
	public Student sLogin(Student st) {
		return this.loginDAO.sLogin(st);
	}

	@Override
	public Instructor iLogin(Instructor i) {
		return this.loginDAO.iLogin(i);
	}

}
