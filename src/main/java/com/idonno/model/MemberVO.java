package com.idonno.model;

public class MemberVO {
	
private String id;
	
	private String password;
	
	private String nick;

	private String phone;
	
	private String email;
	
	private String name;
	
	private String memdate;
	
	private String birth;
	
	private int cnt;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}


	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMemdate() {
		return memdate;
	}

	public void setMemdate(String memdate) {
		this.memdate = memdate;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", nick=" + nick + ", phone=" + phone + ", email="
				+ email + ", name=" + name + ", memdate=" + memdate + ", birth=" + birth + ", cnt=" + cnt + "]";
	}
	
}
