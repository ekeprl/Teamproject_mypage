package com.teamproject.teamapp.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


//핸들러인터셉처 : 다수의 컨트롤러 실행 전 후에 공통적으로 수행해야하는 작업을 처리
// -HandlerInterceptorAdapter 클래스를 상속하여 구현

public class LoginInterceptor extends HandlerInterceptorAdapter {

	//컨트롤러 실행 전에 실행되는 메서드
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {		
		
		HttpSession session = request.getSession();
		MemberVo vo = (MemberVo) session.getAttribute("loginUser"); //로그인한 사용자 정보를 가져오기(session에서 꺼내온 user정보가 컴퓨터가 인식할 수 있도록 membervo형식으로 강제 형변환)
		if (vo == null) { //로그인하지 않은 경우
			response.sendRedirect(request.getContextPath()+"/member/login.do"); //로그인화면으로 리다이렉트
			return false; //컨트롤러 실행안함
		}
		return true; //이후 핸들러(컨트롤러, 인터셉터) 실행
	}
	
	//컨트롤러 실행 후, 뷰(JSP)실행 전에 실행되는 메서드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		
	}
	
	//뷰 실행(JSP 실행 및 응답 출력)후 실행되는 메서드
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		
	}
}
