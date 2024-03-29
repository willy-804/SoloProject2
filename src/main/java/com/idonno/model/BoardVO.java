package com.idonno.model;

import java.util.ArrayList;

import com.idonno.model.AttachFileVO;

public class BoardVO {
	 
private int bno;
	
	private String title;
	
	private String content;
	
	private String nick;
	
	private String regdate;
	
	private int cnt;
	
	private String id;
	
	private int good;

	private String category;

	private String filePath;
	
	private int cnthno;
	
	private int cntrno;
	
	// AttachFileVO(파일 업로드 관련 model)
	private ArrayList<AttachFileVO> attach;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getGood() {
		return good;
	}

	public void setGood(int good) {
		this.good = good;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public int getCnthno() {
		return cnthno;
	}

	public void setCnthno(int cnthno) {
		this.cnthno = cnthno;
	}

	public int getCntrno() {
		return cntrno;
	}

	public void setCntrno(int cntrno) {
		this.cntrno = cntrno;
	}

	public ArrayList<AttachFileVO> getAttach() {
		return attach;
	}

	public void setAttach(ArrayList<AttachFileVO> attach) {
		this.attach = attach;
	}

	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", nick=" + nick + ", regdate="
				+ regdate + ", cnt=" + cnt + ", id=" + id + ", good=" + good + ", category=" + category + ", filePath="
				+ filePath + ", cnthno=" + cnthno + ", cntrno=" + cntrno + "]";
	}

}