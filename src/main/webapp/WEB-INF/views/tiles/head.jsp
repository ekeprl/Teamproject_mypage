<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<link href="/css/tiles/head.css" rel="stylesheet" />    
 <div class="page-header ">        
        <div class="logo"><a href="/mypage/list.do"><img class="logo" src="/images/logo.png" alt="OKDDA"></a></div>
        <nav>
            <ul class="main-nav">
            	<c:if test="${loginUser!=null}">
                <li><a href="/mypage/list.do">마이페이지</a></li>
                <li><a href="/mypage/logout.do">로그아웃</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">공지사항</a></li>
                </c:if>
            </ul>
            <ul class="main-nav">
            	<c:if test="${loginUser==null}">
                <li><a href="/member/add.do">회원가입</a></li>
                <li><a href="/member/login.do">로그인</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">공지사항</a></li>
                </c:if>
            </ul>
            
            
        </nav>        
    </div>