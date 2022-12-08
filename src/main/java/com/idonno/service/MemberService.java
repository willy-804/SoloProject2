package com.idonno.service;

import com.idonno.model.MemberVO;

public interface MemberService {

	// id 중복확인
	public int idcheck(MemberVO member);
	// 회원가입
	public void signup(MemberVO member);
	// 로그인
	public MemberVO signin(MemberVO member);
	// 아이디 찾기
	public String idsearch(MemberVO member);
	
	/* 비밀번호 찾기
	public String pwsearch(MemberVO member);
		
	// 메일 관련
	public int findPwCheck(MemberVO member) throws Exception;
	public void findPw(MemberVO member) throws Exception;
    */
}
