<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title>
</head>
<body>


<%-- <jsp:include page="/WEB-INF/jsp/menu.jsp" /> --%>
	<h1>회원추가</h1>

	<form action='<%=request.getContextPath() %>/member/add.do' method='post'>
		아이디 : <input type='text' name='memId' /><br> 
		비밀번호 : <input type='password' name='memPass' /><br> 
		이름 : <input type='text' name='memName' /><br> 
		전화번호 : <input type='text' name='memPhone' /><br>
		이메일 : <input type='text' name='memEmail' /><br>
		<input type='submit' />
	</form>

</body>
</html>

