package com.service;

import java.util.List;

import com.domain.Admin;

public interface AdminService {

	// 관리자 비밀번호 변경 (모든관리자 / 로그인계정)
	public int modify(Admin a);

	/**** 마스터 관리자 전용 ****************************************/
	// 관리자 계정 추가 (마스터 관리자)
	public int addAdmin(Admin a);

	// 관리자 계정 조회 (마스터 관리자)
	public List<Admin> list();

	// 관리자 비밀번호 초기화 (마스터 관리자)
	public int resetPw(Admin a);

	// 관리자 정보 수정 (마스터 관리자)
	public int updateAdmin(Admin a);

	// 관리자 계정 잠금/해제 (마스터 관리자)
	public int lock(Admin a);
}
