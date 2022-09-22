<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>Insert title here</title>
</head>
<body>
<link href="/css/login.css" rel="stylesheet" />
<jsp:include page="/WEB-INF/views/comm/menu.jsp" /> 
	<h1>로그인</h1>

<%-- 	<form action='<%=request.getContextPath() %>/member/login.do' method='post'>
		아이디 : <input type='text' name='memId' /><br> 
		비밀번호 : <input type='password' name='memPass' /><br> 
		<input type='submit' value="로그인"/>
	</form> --%>
	
		<div id="map" style="width:500px;height:400px;"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7aaed01cf75813f038d6e4b162bd453d"></script>
		<script>
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(33.450701, 126.570667),
				level: 3
			};
	
			var map = new kakao.maps.Map(container, options);
		</script>
	
    
    
    
    
    
    <input type="text" value="로그인" class="title">
    <div class="login-form">
    <div id="logo">
        <img src="/images/login/logo.png" alt="" >
    </div>
    <form action='<%=request.getContextPath() %>/member/login.do' method='post'>
            <input type="text" name="memId" class="text-field" placeholder="아이디">
            <input type="password" name="memPass" class="text-field" placeholder="비밀번호">
            <input type="submit" value="로그인" class="submit-btn">
    </form>

    <div class="links">
        <a href="#">회원가입  ||  비밀번호 찾기</a>
    </div>
    <button type="button" id="kakao-login-btn" class="btn-start btn_kakao" >
        <div><img src="/images/kakao_logo.png" alt="" > </div><span>카카오톡으로 로그인</span>
    </button>
    <button type="button" id="facebook-login-btn" class="btn_start btn_fb">
        <div><img src="/images/facebook_logo.png" alt="" > </div><span>Facebook으로 로그인</span>
    </button>
    <button type="button" id="naver-login-btn" class="btn_start btn_naver">
        <div><img src="/images/naver_logo.png" alt="" > </div><span>네이버로 로그인</span>
    </button>
    </div>
    </form>
    
</body>
</html>

