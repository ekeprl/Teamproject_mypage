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
<jsp:include page="/WEB-INF/views/comm/menu.jsp"/>


	
			<form action="${pageContext.request.contextPath}/mypage/del.do" method="post">
				아이디 : <input  type="text" name="memId"/><br/>
			비밀번호확인 : <input  type="password" name="memPass"/><br/>
			
				<input  type="submit"/>
				
		
		</form>
	 
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<%-- <form action='${pageContext.request.contextPath}/mypage/del.do' method='post'>
		<input type="hidden" name="memId" value="${memVo.memId}"/>
			<a href='${pageContext.request.contextPath}/member/del.do?memId=${vo.memId}'><button type="button">삭제</button></a><br>		
		<input type = 'submit'/>
	</form>
		 --%>
				
</body>
</html>
		

		
		
	
    
    
