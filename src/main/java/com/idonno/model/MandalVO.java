package com.idonno.model;

import java.util.ArrayList;
import java.util.Arrays;

public class MandalVO {

	private int mno; // 이게 필요하려나 
	 
	private String id;
	
	private String nick;
	
	private String regdate; // 이것도 필요할려나
		
    private ArrayList<String> mandal; // 81개의 input 태그의 name이 mandal 
    // 어레이리스트에다 알아서 담겨서 이제 컨트롤러로 가서 ㅇㅇ 
    // 서비스로 보내고 ...
    
    // get mandal하는거 이걸쓰고 넣을때는 
    // 맵퍼에서 하나씩 넣어야하니까 밑에꺼로 쓰고 

	// private String[] mandal; // 81개의 input 태그의 name이 mand
    
    private String mandal_one;
	
	public String getMandal_one() {
		return mandal_one;
	}

	public void setMandal_one(String mandal_one) {
		this.mandal_one = mandal_one;
	}

	public int getMno() {
		return mno;
	}

	public void setMandal(ArrayList<String> mandal) {
		this.mandal = mandal;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public ArrayList<String> getMandal() {
		return mandal;
	}



	@Override
	public String toString() {
		return "MandalVO [mno=" + mno + ", id=" + id + ", nick=" + nick + ", regdate=" + regdate + ", mandal=" + mandal
				+ ", mandal_one=" + mandal_one + "]";
	}

   
   
}