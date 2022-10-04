<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

		<!DOCTYPE html>
		<html>
		<head>
		<meta charset='UTF-8'>
		<title>Insert title here</title>
		</head>
		<body>
		
<jsp:include page="/WEB-INF/views/comm/menu.jsp"/>
		
		 <h1> 회원정보변경 </h1> 
		
		<form action='${pageContext.request.contextPath}/mypage/edit.do' method='post'>
		<input type='hidden' name='memId' value="${memVo.memId}"> 
		현재 비밀번호 : <input type = 'password' name='memPass'  /><br> 
		
		바꿀 비밀번호 : <input type = 'password' name='memnPass'  /><br> 
		비밀번호 확인 : <input type = 'password' name='memnPassr'  /><br> 
		<input type = 'submit'/>
				
		</form>
		
		</body>
		</html>
		
		
		
		
		<%-- <a href='${pageContext.request.contextPath}/member/list.do'><input type="button" value="목록"></a> --%>