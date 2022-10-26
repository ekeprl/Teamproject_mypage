<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        	
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>마이페이지</title> 


<!-- BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!-- 공통 Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
</head>
<body> 



	<h1> 로그인정보 수정 </h1> 
		<a href='<c:url value="/mypage/edit.do"/>'><button>회원수정</button></a><br>
		 회원아이디 : 회원이름 : 회원포인트  <br>
			
	<c:forEach var="vo" items="${memList}">
		<a href="${pageContext.request.contextPath}/mypage/edit.do?memId=${vo.memId}"> <c:out value="${vo.memId}"/> </a>
		: <c:out value="${vo.memName}"/> : ${vo.memPoint}
		<a href='${pageContext.request.contextPath}/mypage/del.do?memId=${vo.memId}'><button type="button">삭제</button></a><br>
	</c:forEach>	
				
</body>
</html>
		

		
		
	
    
    
