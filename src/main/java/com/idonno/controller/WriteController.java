package com.idonno.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.idonno.model.BoardVO;
import com.idonno.service.BoardService;

@Controller
public class WriteController {

	@Autowired
	BoardService bs;

	// to 폴더 안에 있는 write.jsp를 실행할 때
	@RequestMapping(value = "/to/write", method = RequestMethod.GET)
	public void write(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
	}
	
	// 글쓰기에서 카테고리, 제목, 내용을 DB로 보내기 위한 back작업을 위한 
	@RequestMapping(value = "/to/write", method = RequestMethod.POST, consumes="application/json; charset=utf-8")
	public ResponseEntity<String> writePost(HttpServletRequest request,@RequestBody BoardVO board) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String nick = (String) session.getAttribute("nick");
		board.setId(id);
		board.setNick(nick);
		System.out.println("board");
		bs.boardwrite(board);
		return new ResponseEntity<> ("success", HttpStatus.OK);
	}	
}