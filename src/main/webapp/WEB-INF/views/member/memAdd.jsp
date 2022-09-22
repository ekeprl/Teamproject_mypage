<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<link href="/css/member.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/WEB-INF/views/comm/menu.jsp" /> 
<%-- <jsp:include page="/WEB-INF/jsp/menu.jsp" /> --%>
	<!-- <h1>회원추가</h1> -->

	 <%-- <form action='<%=request.getContextPath() %>/member/add.do' method='post'>
		아이디 : <input type='text' name='memId' /><br> 
		비밀번호 : <input type='password' name='memPass' /><br> 
		이름 : <input type='text' name='memName' /><br> 
		전화번호 : <input type='text' name='memPhone' /><br>
		이메일 : <input type='text' name='memEmail' /><br>
		<input type='submit' />
	</form> --%> 
<body>

    <input type="text" value="회원가입" class="title">
    <div class="login-form">
        <div id="logo">
            <img src="/images/member/logo.png" alt="" >
        </div>
        <form action='<%=request.getContextPath() %>/member/add.do' method='post'>
            <input type="text" name="memId" class="text-field" placeholder="아이디를 입력해주세요.">
            <button type="button" id="id-overlap">
                중복확인
            </button>
            <input type="password" name="memPass" class="text-field" placeholder="비밀번호를 입력해주세요.">
            <!-- <input type="text" name="password2" class="text-field" placeholder="비밀번호를 다시 입력해주세요."> -->
            <input type="text" name="memName" class="text-field" placeholder="이름을 입력해주세요.">
            <input type="text" name="memPhone" class="text-field" placeholder="휴대폰 번호를 입력해주세요.">
            <button type="button" id="id-overlap">
                번호인증
            </button>
            <input type="text" name="memEmail" class="text-field" placeholder="이메일 주소를 입력해주세요.">
            <button type="button" id="id-overlap">
                이메일인증
            </button>
               <!-- <div class="terms"><input type="checkbox"name="chk">&nbsp&nbsp이용약관 동의</div>
               <div class="terms"><input type="checkbox"name="chk">&nbsp&nbsp서비스이용약관(필수)</div>
               <div class="terms"><input type="checkbox"name="chk">&nbsp&nbsp개인정보 처리 방침(필수)</div> 
               <div class="terms"><input type="checkbox"name="chk">&nbsp&nbsp이벤트 등 프로모션 알림 메일 수신(선택)</div> -->
               
                
           

            <input type="submit" value="가입하기" class="submit-btn">
        </form>

    
       
    </div>

</body>
</body>
</html>

