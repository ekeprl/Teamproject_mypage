package com.teamproject.teamapp.mypage;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.teamproject.teamapp.mypage.MypageVO;

@Controller
public class MypageController {
	@Autowired
	private MypageService mypageService;	
	
	@RequestMapping (value = "/mypage/list.do", method = RequestMethod.GET) 
	public String list(Map<String,Object> map) {				
		List<MypageVO> list = mypageService.selectMypageList();		
		map.put("memList", list);				
		return "mypage/myList";
		
	}

	//비밀번호 수정 jsp
	@RequestMapping (value = "/mypage/edit.do", method = RequestMethod.GET)
	public String editForm(String memId, Map<String,Object>map) {	
		MypageVO vo = mypageService.selectMypage(memId);
		map.put("memVo", vo);
		return "mypage/myEdit"; 
	}
	
	//비밀번호 수정 로직
	@RequestMapping (value = "/mypage/edit.do", method = RequestMethod.POST)
	public String edit(MypageVO vo,@RequestParam String memnPass, HttpSession session ) {
		
		String curpass = vo.getMemPass();
		
		MypageVO storeduser = mypageService.selectMypage(vo.getMemId());
		
		if(curpass.equals(storeduser.getMemPass()) ) {
			storeduser.setMemPass(memnPass);
			
			int num = mypageService.updateMypage(storeduser);
			session.invalidate();
			return "redirect:/mypage/login.do";
		}else {
		return "redirect:/mypage/list.do";
		}
	}
	
	//로그인 정보 수정 jsp
		@RequestMapping (value = "/mypage/editnm.do", method = RequestMethod.GET)
		public String editnmForm(String memId, Map<String,Object>map) {	
			MypageVO vo = mypageService.selectMypage(memId);
			map.put("memVo", vo);
			return "mypage/myEditnm"; 
		}
		
		//로그인 정보수정 로직		
		@RequestMapping (value = "/mypage/editnm.do", method = RequestMethod.POST)
		public String editnm(MypageVO vo) {

			int num = mypageService.update1Mypage(vo);
			return "redirect:/mypage/list.do";
		}
	//회원 탈퇴 get
	@RequestMapping (value = "/mypage/del.do", method = RequestMethod.GET)
	public String delForm(String memId, Map<String,Object>map) {
		MypageVO vo = mypageService.selectMypage(memId);
		map.put("memVo", vo);
		return "mypage/myDel";

	}
	// 회원 탈퇴 post
	@RequestMapping(value = "/mypage/del.do", method = RequestMethod.POST)
	public String del(MypageVO vo){
		int num = mypageService.delMypage(vo);	
//		if (memId==#{memId})
		
	    return "redirect:/member/login.do";
	}
			
		@RequestMapping(value = "/mypage/login.do", method = RequestMethod.GET)
		public String loginForm(){		
			return "mypage/login"; 
		}
		
		@RequestMapping(value = "/mypage/login.do", method = RequestMethod.POST)
		public String login(MypageVO vo, HttpSession session ){
			MypageVO memVo = mypageService.selectLoginMypage(vo);
			
			if (memVo==null) {	//로그인 실패한 경우
				return "redirect:/mypage/login.do";
			}else {	//로그인 성공한 경우
				session.setAttribute("loginUser", memVo);	//로그인 성공한 사용자 정보를 세션에 "loginUser"라는 이름으로 저장
				return "redirect:/mypage/mylist.do";
			}		

		}			
		
		@RequestMapping (value = "/mypage/logout.do", method = RequestMethod.GET) 
		public String logout(HttpSession session){					
//			session.setAttribute("loginUser", null);	//속성값으로 null을 저장
//			session.removeAttribute("loginUser");		//속성을 삭제
			session.invalidate();						//세션객체 전체를 초기화(삭제 후 재생성)
			
			return "redirect:/mypage/login.do";
			
		}

		@RequestMapping(value = "/mypage.do", method = RequestMethod.POST)
		public String mypage() throws Exception{
			return "redirect:/mypage/login.do";
		}
}
