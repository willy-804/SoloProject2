package com.idonno.service;

import com.idonno.model.ReplePageVO;
import com.idonno.model.RepleVO;

public interface RepleService {
	
	// 댓글 쓰기를 위한 설계 
		public int writeReple(RepleVO reple);
		
		// 댓글 목록 리스트를 위한 설계
		//public ArrayList<RepleVO> list(RepleVO reple);
		public ReplePageVO list(RepleVO reple,int bno);
		
		// 댓글 삭제를 위한 설계
		public int remove(RepleVO reple);
		// 댓글 수정을 위한 설계
		public int modify(RepleVO reple);	

}
