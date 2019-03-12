package com.persistence;

import java.util.*;

import com.domain.*;

public interface StudentDAO {

	// ���
	public List<Student> list(String key, String value, int startIdx);

	// �߰�
	public int addStudent(Student st);

	// ����
	public int delStudent(String student_id);

	// ����
	public int updateStudent(Student st);
	
	// �������
	public int addPicture(Student st);
	
	// �������
	public int updatePicture(Student st);
		
	// ��й�ȣ �ʱ�ȭ(������ �׼�)
	public int resetPw(Student st);
	
	// �������� ���� ���� ��ȸ
	public List<Student> lhList(Student st);
	
	// ������ �������� ��ȸ
	public Student profile(Student st);
	
	// �ߵ�Ż��
	public int abandonment(Student st);
	
	// �������
	public int cancelOC(Student st);
	
	// ������û
	public int addLH(Student st);
	
	public int count(String key, String value);
}