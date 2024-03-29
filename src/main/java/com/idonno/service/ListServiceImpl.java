package com.idonno.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idonno.mapper.ListMapper;
import com.idonno.model.BoardVO;
import com.idonno.model.CriteriaVO;

@Service
public class ListServiceImpl implements ListService {
	
	@Autowired
	ListMapper lm;
	
	// ListService에서 설계되어 진 list 추상메서드를  구현
	public ArrayList<BoardVO> list(CriteriaVO cri){
		return lm.list(cri);
	}
	
	// 매니저 글 목록 리스트 설계
	public ArrayList<BoardVO> manager(){
		return lm.manager();
	}
	
	// ListService에서 설계되어 진 total 추상메서드를 구현
	public int total(CriteriaVO cri) {
		return lm.total(cri);
	}
	
	// 이미지가 있는 게시글 목록 리스트 설계
	public ArrayList<BoardVO> imglist(CriteriaVO cri){		
		return lm.imglist(cri);
	}

	// board 테이블 이미지 전체건수 설계
	public int imgtotal(CriteriaVO cri) {
		return lm.imgtotal(cri);
	}
/*	
	// ListService에서 설계되어 진 sitelist 추상메서드를 구현
	public ArrayList<BoardVO> sitelist(CriteriaVO cri){
		return lm.sitelist(cri);
	}
	
	// ListService에서 설계되어 진 houselist 추상메서드를 구현
	public ArrayList<BoardVO> houselist(){
		return lm.houselist();
	}
	
	// ListService에서 설계되어 진 foodlist 추상메서드를 구현
	public ArrayList<BoardVO> foodlist(){
		return lm.foodlist();
	}
	
	// ListService에서 설계되어 진 translist 추상메서드를 구현
	public ArrayList<BoardVO> translist(){
		return lm.translist();
	}
	
	// ListService에서 설계되어 진 tourlist 추상메서드를 구현
	public ArrayList<BoardVO> tourlist(){
		return lm.tourlist();
	}
*/

}
