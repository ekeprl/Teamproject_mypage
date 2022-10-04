<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.teamproject.teamapp.member.MemberVo"%>
<%@page import="java.util.ArrayList"%>


	
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title>
</head>
<body>
<%-- <%@ include file="" %> --%>
<%-- <c:import url=""></c:import> --%>
<jsp:include page="/WEB-INF/views/comm/menu.jsp" /> 

<!-- Tiles ,SiteMesh 일일이 jsp에 include를 하지 않아도 적용할 수 있는 라이브러리 -->

		
<h1> 회원 목록 </h1> 
		
		<c:if test="${loginUser!=null}">
		<a href="${pageContext.request.contextPath}/member/edit.do?memId=${loginUser.memId}"><button>회원정보수정</button> </a>
	</c:if>
		
</body>
</html>
	
	
    