package com.idonno.mapper;

import com.idonno.model.AttachFileVO;

public interface BoardAttachMapper {
	
	public void insert(AttachFileVO attach);
	
	// 해당게시물의 첨부파일 조회
	public AttachFileVO attachlist(int bno);

	public void attachremove(AttachFileVO attach);

}
