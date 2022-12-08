package com.idonno.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.idonno.model.CriteriaVO;
import com.idonno.model.MemberVO;
import com.idonno.model.pageVO;
import com.idonno.service.MypageService;



@Controller
public class MypageController {
	
	@Autowired
	MypageService mm; 
	
	@RequestMapping(value = "/do/favorite", method = RequestMethod.GET)
	public void favorite() {
		
	}
	@RequestMapping(value = "/do/memModify", method = RequestMethod.GET)
	public void memModify() { 
	}
	//내가 쓴글 불러오기
	@RequestMapping(value = "/memModify", method = RequestMethod.GET)
	public String memModify(MemberVO member, HttpServletRequest request,Model model,CriteriaVO cri) {     
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		cri.setId(id);
		model.addAttribute("myboard",mm.myboard(cri));
		int total=mm.total(cri);
		System.out.println("total="+total);
		model.addAttribute("paging",new pageVO(cri,total));
		return "/do/memModify";
	}
	
	
	//로그인 해서 마이페이지에 정보 보이게 하는것
	@RequestMapping(value = "/do/mypage", method = RequestMethod.GET)
	public void mypage(MemberVO member, HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		member.setId(id);
		System.out.println(id);
		model.addAttribute("member",mm.detail(member));
	}
	
	//수정
	@RequestMapping(value = "/do/mypage", method = RequestMethod.POST)
	public String modify(MemberVO member,RedirectAttributes rttr,HttpSession session ) {
		System.out.println("hi");
		mm.modify(member);
		rttr.addAttribute("id",member.getId());
		session.setAttribute("nick", member.getNick());
		return "do/Withdrawal";
	}
	
	//회원탈퇴
	@RequestMapping(value = "/do/favorite", method = RequestMethod.POST)
	public String remove(MemberVO member, HttpServletRequest request,HttpServletResponse response) throws IOException{
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		member.setId(id);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println(id);
		if(mm.removechk(member)==1) {
			mm.remove(member);
			session.invalidate();
			out.println("<script>alert('회원탈퇴 되었습니다.'); </script>");
			
		}else {
			out.println("<script>alert('비밀번호를 확인해 주세요.'); </script>");
			out.flush();
			return"do/favorite";
		}
		return"do/Withdrawal";
	}
	
	@RequestMapping(value = "/do/Withdrawal", method = RequestMethod.GET)
	public void Withdrawal() {
		
	}

	
}
