package com.persistence;

import java.util.List;

import com.domain.Instructor;
import com.domain.Subject;

public interface InstructorDAO {

	
	// �뜝�럥�몡�넭怨ｋ쳟占쎌굲占쎈탶�⑤베�맇�뜝�럡�돭 占쎌녃域밟뫁�굲占쎈눇�뙼蹂��굲
	public int modify(Instructor i);
	
	// �뜝�럥�몡�넭怨ｋ쳟占쎌굲占쎈탶�⑤베�맇�뜝�럡�돭 �뜝�럥竊뤷뜝�럥�맃占쎈뎨�ⓦ끉�굲�뜝�럥瑗�
	public int reset(Instructor i);
	
	public int addInst(Instructor i, String[] pc_check);
	
	public int updateInst(Instructor i);
	
	public int delInst(String instructor_id);

	public int addPC(String instructor_id,String subject_id);

	public int addPicture(Instructor i);
	
	public int updatePicture(Instructor i);
	
	public int delPC(String Instructor_id, String subject_id);
	
	public int totalcount();
	
	public String addInstId();
	
	public List<Instructor> list(String key, String value);
	public List<Instructor> list2(String key, String value);
	public List<Instructor> list3(String key, String value);
	public List<Instructor> list4(String key, String value);
	public List<Instructor> osInfo(String key, String value);
	public List<Subject> pcInfo(String instructor_id);
	public Instructor profile(String instructor_id);
	
}
