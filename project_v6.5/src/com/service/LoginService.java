package com.service;

import com.domain.Admin;
import com.domain.Instructor;
import com.domain.Student;

public interface LoginService {

	public Admin aLogin(Admin a);
	
	public Admin mLogin(Admin a);
	
	public Student sLogin(Student st);
	
	public Instructor iLogin(Instructor i);
}
