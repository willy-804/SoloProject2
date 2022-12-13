package com.idonno.service;

import com.idonno.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.idonno.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mm;
		
	public int idcheck(MemberVO member) {
		int result = mm.idcheck(member);
		return result;
	}
	
	public void signup(MemberVO member) {
		mm.signup(member);
	}

	@Override
	public MemberVO signin(MemberVO member) {
		return mm.signin(member);
	}
	
	public String idsearch(MemberVO member) {
		return mm.idsearch(member);
	}

	@Override
	public String pwsearch(MemberVO member) {
		// TODO Auto-generated method stub
		return mm.pwsearch(member);
	}

}