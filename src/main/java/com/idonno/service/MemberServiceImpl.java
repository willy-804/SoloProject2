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
	
	/*
	public String pwsearch(MemberVO member) {
		return mm.pwsearch(member);
	}
	

	public int findPwCheck(MemberVO member) {
		return mm.findPwCheck(member);
	}
	public void findPw(MemberVO member) throws Exception {
		String memberKey = new TempKey().getKey(6,false);
		MailUtils sendMail = new MailUtils(mailSender);
		sendMail.setSubject("[IDONNO 커뮤니티 임시 비밀번호 입니다.]");
		sendMail.setText(
					"<h1>임시 비밀번호 발급</h1>"+
							"<br/>"+member.getId()+"님"+
							"<br/>비밀번호 찾기를 통한 임시 비밀번호 입니다."+
							"<br/>임시 비밀번호 :   <h2>"+memberKey+"</h2>"+
							"<br/>로그인 후 비밀번호 변경을 해주세요."+
							"<a href='http://localhost:8080/sign"+
							">로그인 페이지</a>");
		sendMail.setFrom("kimjuyeon20220608@gmail.com", "IDONNO");
		sendMail.setTo(member.getEmail());
		sendMail.send();
		member.setPassword(memberKey);
		mm.findPw(member);
		
	}
	*/
}