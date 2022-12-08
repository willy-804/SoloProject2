package com.idonno.controller;

import java.io.IOException;
import java.io.PrintWriter;

import java.text.SimpleDateFormat;

import java.util.Date;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.idonno.model.CriteriaVO;

import com.idonno.model.MandalVO;
import com.idonno.model.MemberVO;
import com.idonno.model.pageVO;
import com.idonno.service.ListService;
import com.idonno.service.MandalService;
import com.idonno.service.MemberService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	MemberService ms;
	
	@Autowired
	ListService ls;
	
	@Autowired
	MandalService mandalservice;
	

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		/* 
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
	
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
		*/
		
        Date time = new Date();
		
        // System.out.println("포맷 지정 전 : "+ time);
		
		SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");

		
		String time1 = format1.format(time);
				
		// System.out.println("포맷 지정 후 :"+ time1);

		model.addAttribute("serverTime", time1);
		
		return "home";
		
	}
	
	
	@RequestMapping(value = "header/login", method = RequestMethod.GET) // controller의 value값은 url 주소를 만드는 것  
	public void login(){
		// void은 리턴이 login jsp 파일로 같다고    
		// login이라고 메서드명 쓴 거는 아무거나 써도 되는거 한번만 쓰고 말꺼라서  
	}
		
	@RequestMapping(value = "/header/login", method = RequestMethod.POST)
	public String login(MemberVO member, HttpSession session,HttpServletResponse response) throws IOException {
		MemberVO a = ms.signin(member);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(a!=null) {
			String id = a.getId();
			String nick = a.getNick();
			System.out.println("session.set("+id+")");
			session.setAttribute("id",id); // session.setAttribute(이름, 값) 으로 세션에 값 저장하기
			session.setAttribute("nick", nick); // session.setAttribute(이름, 값) 으로 세션에 값 저장하기 
		}else {
			out.println("<script>alert('아이디, 비밀번호를 확인해 주세요'); </script>");
			out.flush();
			return "/header/login";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/header/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/header/signup", method = RequestMethod.GET)
	public void signup() {}
			
	
	@RequestMapping(value = "/header/idcheck", method = RequestMethod.POST)
	public ResponseEntity<Integer> idcheck(MemberVO member, HttpServletResponse response) throws IOException {
		System.out.println("member는"+member);
		int result = ms.idcheck(member);
		System.out.println("result는"+result);
		return new ResponseEntity<>(result,HttpStatus.OK);
	}

	@RequestMapping(value = "/header/signup", method = RequestMethod.POST)
	public String signuppost(MemberVO member) throws IOException {
		member.setBirth(member.getBirth().replace("-", ""));
		member.setEmail(member.getEmail().replace(",", ""));
		member.setPhone(member.getPhone().replace(",", ""));
		ms.signup(member);
		return "/header/login";
	}
		
	@RequestMapping(value = "/header/idsearch", method = RequestMethod.GET)
	public void idsearchpage() {}
	
	@RequestMapping(value = "/header/idsearch", method = RequestMethod.POST)
	public String idsearch(MemberVO member,HttpServletResponse response) throws IOException {
		String id = ms.idsearch(member);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(id!=null) {
			int a = id.length()/2;
			String b = "";
			String serid;
			for(int i=0;i<a;i++) {b+="*";}
			if(id.length()%2==0) {
				serid = id.substring(0,a) + b;
			}else {
				serid = id.substring(0,a) + b + "*";
			}
			out.println("<script>alert('아이디:"+serid+"'); </script>");
			out.flush();
			return "header/login";
		}else {
			out.println("<script>alert('아이디를 찾을 수 없습니다.'); </script>");
			out.flush();
			return "header/idsearch";
		}
	}
		
	// home.jsp와 같은 위치에 있는 today.jsp를 실행할 때
	@RequestMapping(value = "/today", method = RequestMethod.GET)
	public void today(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id"); 
		// session.getAttribute(name) 이라고 
		// getAttribute 메소드는 세션에 저장된 값을 이름으로 조회해 값을 반환받는다		
		// 값은 반환받을 때 Object 타입으로 돌아오기 때문에 사용할 때 형변환이 필요
		System.out.println("today에 들어가면"+id);
	}
	
		
	@RequestMapping(value = "/i", method = RequestMethod.GET)
	public void i(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id); 
		System.out.println("i다");
	}
	
	 @RequestMapping(value="/i", method= RequestMethod.POST)
	 public String listtest(HttpServletRequest request, Model model, MandalVO mandalvo){
	                                                              // @RequestBody는 비동기라고! 
		   
		    HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			String nick = (String) session.getAttribute("nick");
			mandalvo.setId(id);
			mandalvo.setNick(nick);
			
			
		    //String content = request.getParameter("content");			  	        
	        //model.addAttribute("content", content);
	        
			// System.out.println(mandalvo.getMandal()[0]); 
	        // 여러개의 데이터 중 0번째 꺼를 찍어보니까 나온다 알아서 잘 들어가고 있구나 
	        
			System.out.println(mandalvo.getMandal()); 
	                
	        mandalservice.mandalwrite(mandalvo);
	        
	        return "/i";
	}		
	    
	@RequestMapping(value = "/know", method = RequestMethod.GET)
	public void know(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
	}
	
	@RequestMapping(value = "/what", method = RequestMethod.GET)
	public void what(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
	}
	
	@RequestMapping(value = "/to/board", method = RequestMethod.GET)
	public void to(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
    }
    
    public String list(Model model, CriteriaVO cri) {

		System.out.println(cri);
		// board.jsp 실행 할 때 매니저글 select 된 결과를 가져가라.
		model.addAttribute("manager",ls.manager());
		// board.jsp 실행 할 때 select 된 결과를 가져가라.
		model.addAttribute("list", ls.list(cri));
		// list 폴더 안에 있는 list.jsp 실행 할 때 pageVO에 저장되어 있는 데이터를 가져와라.
		//							생성자 호출(매개변수가 없는 생성자)
		// int total = ls.total();
		int total = ls.total(cri);
		System.out.println(total);
		model.addAttribute("paging", new pageVO(cri, total));
		
		// 공지가 1페이지에서만(검색결과는 제외) 보이기 위한 변수 선언
		String keyword = cri.getKeyword();
		model.addAttribute("keyword", keyword);
		System.out.println(cri.getCategory());
		System.out.println(cri.getKeyword());
		return "to/board";
		
    } 
		
    // 로그인한 사용자면 
	
	// 비회원이면 
	@RequestMapping(value = "/secret", method = RequestMethod.GET)
	public void write(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);
	}
	
	// 로그인한 사용자 중 아이디가 매니저면 
	
}