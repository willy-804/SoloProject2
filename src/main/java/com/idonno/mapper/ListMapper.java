package com.idonno.mapper;

import java.util.ArrayList;

import com.idonno.model.BoardVO;
import com.idonno.model.CriteriaVO;

public interface ListMapper {

	// 전체 게시글 목록 리스트에 해당되는 DB작업 설계
		public ArrayList<BoardVO> list(CriteriaVO cri);

		// 매니저 글 목록 리스트에 해당되는 DB작업 설계
		public ArrayList<BoardVO> manager();	
		
		// board 테이블 전체건수 DB설계
		public int total(CriteriaVO cri);

		// 이미지가 있는 게시글 목록 리스트에 해당되는 DB작업 설계
		public ArrayList<BoardVO> imglist(CriteriaVO cri);
		
		// board 테이블 이미지 전체건수 DB설계
		public int imgtotal(CriteriaVO cri);
		
	/*
		// 관광 게시글 목록 리스트에 해당되는 DB작업 설계
		public ArrayList<BoardVO> sitelist(CriteriaVO cri);
		
		// 숙소 게시글 목록 리스트에 해당되는 DB작업 설계
		public ArrayList<BoardVO> houselist();
		
		// 음식 게시글 목록 리스트에 해당되는 DB작업 설계
		public ArrayList<BoardVO> foodlist();
		
		// 교통 게시글 목록 리스트에 해당되는 DB작업 설계
		public ArrayList<BoardVO> translist();
		
		// 투어 게시글 목록 리스트에 해당되는 DB작업 설계
		public ArrayList<BoardVO> tourlist();
	 */
		
}
