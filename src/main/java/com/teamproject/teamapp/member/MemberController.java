package com.teamproject.teamapp.member;

import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.common.hash.Hashing;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService; 
	
	@RequestMapping(value = "/member/list.do", method = RequestMethod.GET) //get 방식은 스킵할수없다.
	public String list(Map<String,Object> map){
		List<MemberVo> list = memberService.selectMemberList();			
		map.put("memList", list);
		return "member/memList";
	}

	@RequestMapping(value = "/member/add.do", method = RequestMethod.GET)
	public String addform()  {
		return "member/memAdd";
		}
	
	@RequestMapping(value = "/member/add.do", method = RequestMethod.POST)
	public String add(MemberVo vo) {
		
		String resultHexString //비밀번호 암호화
        = Hashing.sha256().hashString(vo.getMemPass(), StandardCharsets.UTF_8)
        				  .toString();
		vo.setMemPass(resultHexString);
        int num = memberService.insertMember(vo);
		return "redirect:/member/list.do";  
	}
	
		@RequestMapping(value = "/member/edit.do", method = RequestMethod.GET)
		public String editForm(String memId, Map<String, Object> map) {	
//			String memId = req.getParameter("memId"); 파라미터값과 변수명이 같아야한다.
			MemberVo vo = memberService.selectMember(memId);
			map.put("memVo", vo);
			return "member/memEdit"; 
		}
		
		@RequestMapping(value = "/member/edit.do", method = RequestMethod.POST)
		public String edit(MemberVo vo) {
//			HttpSession session = req.getSession();
//			MemberVo mvo = (MemberVo) session.getAttribute("loginUser");
//			if (!mvo.getMemId().equals(req.getParameter("memId"))) { 
//			throw new RuntimeException("로그인한 사용자와 다른 회원 정보는 변경할 수 없습니다.");
//}
//			MemberVo vo = new MemberVo();
//		    vo.setMemId( req.getParameter("memId"));
//			vo.setMemPass( req.getParameter("memPass"));
//			vo.setMemName( req.getParameter("memName"));
//			vo.setMemPoint( Integer.parseInt(req.getParameter("memPoint") ));
//			int num = memberDao.updateMember(vo);  파라미터값과 객체의 이름이 같으면 스프링이 알아서 이 작업들을해준다.
			
			int num = memberService.updateMember(vo);
			return "redirect:/member/list.do";
	}
	
		@RequestMapping(value = "/member/del.do", method = RequestMethod.GET)
		public String del(String memId) {
			int num = memberService.delMember(memId);
        	return "redirect:/member/list.do";
		}		
		
			
			//서블릿의 service() 메서드 : 요청방식에 상관없이 실행되는 메서드
			//서블릿의 doXxx() 메서드 : 요청방식이 xxx인 경우에 실행되는 메서드
		
			//로그인 jsp
			@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
			public String loginForm() {				
				return "/member/login";
			}
			//로그인 로직
			@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
			public String login(MemberVo vo, HttpSession session){
				String resultHexString
                = Hashing.sha256().hashString(vo.getMemPass(), StandardCharsets.UTF_8)
                				  .toString();
				vo.setMemPass(resultHexString);
		        MemberVo memVo = memberService.selectLoginMember(vo);
		        if(memVo == null) { //로그인이 실패한 경우
		        	//다시 로그인 페이지로 이동
		        	return "redirect:/member/login.do";
		        }else { //로그인이 성공한 경우
		           session.setAttribute("loginUser", memVo); //로그인 성공한 사용자 정보를 세션에 "loginUser"라는 이름으로 저장 
		           return "redirect:/member/list.do";
		        }
				
		        //resp.sendRedirect("이동할 사이트 주소"); 명령을 사용하여,
		        // 웹브라우저에게 특정 사이트로 이동하라는 명령을 담은 응답을 전송
//		       resp.sendRedirect("http://localhost/member/list.do");
		        
		/*
				resp.setCharacterEncoding("UTF-8");
				resp.setContentType("text/html");		
				PrintWriter out = resp.getWriter();		
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head>");
				out.println("<meta charset='UTF-8'>");
				out.println("<title>Insert title here</title>");
				out.println("</head>");
				out.println("<body>");
				out.println("<h1>회원추가</h1>");
				
				out.println( num + "명의 회원이 추가되었습니다.");
				
				
				out.println("</body>");
				out.println("</html>");		
		*/		

			}
			@RequestMapping(value = "/member/logout.do", method = RequestMethod.GET)
			public String logout(HttpSession session){
//				HttpSession session = req.getSession();
				//세션의 속성값을 삭제하는 방법
//				session.setAttribute("loginUser", null); //속성값으로 null을 저장
//				session.removeAttribute("loginUser"); //속성을 삭제
				session.invalidate(); //세션객체 전체를 초기화(삭제 후 재생성)
				return "redirect:/member/login.do";
//				resp.sendRedirect(req.getContextPath() + "/member/login.do");
		     }
		}
		

//POJO : 옛날부터 사용하던 기능을 이용해서 애플리케이션을 만듦. 특정 라이브러리에 종속적이지 않은 기능을 사용



