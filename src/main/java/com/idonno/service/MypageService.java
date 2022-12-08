package com.idonno.service;

import java.util.ArrayList;

import com.idonno.model.BoardVO;
import com.idonno.model.CriteriaVO;
import com.idonno.model.MemberVO;

public interface MypageService {
	
	public void mypagemypage(MemberVO member);

	public ArrayList<MemberVO> my(CriteriaVO cri);    //이거 추가된거 보기
	
	public MemberVO detail(MemberVO member);
	
	public void modify(MemberVO member);
		
	public void remove(MemberVO member);
	
	public int removechk(MemberVO member);
	
	public ArrayList<BoardVO> myboard(CriteriaVO cri );
	
	public int total(CriteriaVO cri);
	

}
