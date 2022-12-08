package com.idonno.service;

import java.util.ArrayList;

import com.idonno.model.BoardVO;
import com.idonno.model.CriteriaVO;
import com.idonno.model.MemberVO;
import com.idonno.model.RepleVO;

public interface ManagerService {

	// 멤버 생성 설계
		// 멤버 목록 리스트 설계
		public ArrayList<MemberVO> list(CriteriaVO cri);

		// 멤버 리스트에서 전체 회원수 조회
		public int total(CriteriaVO cri);

		// 멤버 리스트에서 아이디 검색
	/*	public MemberVO memsearch(MemberVO member);
	*/
		// 멤버 상세 페이지 설계
		public MemberVO memdetail(MemberVO member);

		// 멤버 삭제 설계
		public void remove(MemberVO remove);

		// 작성 글 리스트
		public ArrayList<BoardVO> WriteList(CriteriaVO cri);
			
		// 작성 글 리스트에서 전체 게시물수 조회
		public int boardtotal(CriteriaVO cri);

		// 글 삭제
		public void bremove(BoardVO bremove);

		// 댓글 리스트
		public ArrayList<RepleVO> RepleList(CriteriaVO write);
		
		// 댓글 리스트에서 전체 댓글수 조회
		public int repletotal(CriteriaVO cri);


		// 댓글 삭제
		public void repleremove(RepleVO remove);

		// 글 수정 설계
		// public void modify(BoardVO board);

}
