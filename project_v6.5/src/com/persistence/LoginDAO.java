package com.persistence;

import com.domain.Admin;
import com.domain.Instructor;
import com.domain.Student;

public interface LoginDAO {

	public Admin aLogin(Admin a);
	
	public Admin mLogin(Admin a);
	
	public Student sLogin(Student st);
	
	public Instructor iLogin(Instructor i);
}
