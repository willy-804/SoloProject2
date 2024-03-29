package com.idonno.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.idonno.mapper.BoardAttachMapper;
import com.idonno.mapper.BoardMapper;
import com.idonno.model.BoardVO;
import com.idonno.model.CriteriaVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper bm;
	
	@Autowired
	BoardAttachMapper bam;

	// 글쓰기 설계도를 보고 구현하기
	public void boardwrite(BoardVO board) {
		bm.boardwrite(board);
		System.out.println(board.getBno());
		
		System.out.println(board.getAttach());
		if (board.getAttach() != null) {
			board.getAttach().forEach(attach -> {
				attach.setBno(board.getBno());
				bam.insert(attach);
			});
		}
	}

//	public ArrayList<BoardVO> list(){
//		return bm.list();
//	}

//	public BoardVO detail(BoardVO board){
//		return bm.detail(board);
//	}

//	public void modify(BoardVO board) {
//		bm.modify(board);
//	}

//	public void remove(BoardVO board) {
//		bm.delete(board);
//	}
	
	public ArrayList<BoardVO> search(CriteriaVO cri) {
		return bm.search(cri);
	}

	public int total(CriteriaVO cri) {
		return bm.total(cri);
	}
}
