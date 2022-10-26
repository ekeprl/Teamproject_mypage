<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 틍록</title>

<!-- BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!-- 공통 Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link href="/css/hostadd.css" rel="stylesheet" />

</head>
<body>
		<form action="${pageContext.request.contextPath}/mypage/hostadd.do" method="post">
	<div id="biggest">
	<h3> 계정 > 호스트 등록</h3>
        <h1>본인의 숙소를 등록해보세요</h1>
    <div id="biggest2">
		<div id="delsize">
        <div id="pinfoname"> 
            <div id="nameboxup">
                <h2>새로운 옥상을 등록하세요</h2>
            </div>
            <div id="nameboxdown">
                <button id="plusbtn" style="float:left; ">등록하기</button>
            </div>
         </div>
        <div id="pinfoname"> 
            <div id="nameboxup">
                <h2>현재 비밀번호를 확인하세요</h2>
            </div>
            <div id="nameboxdown">
                <input type="password" name="memPass" placeholder="비밀번호 확인" style="width:450px; height:18px"/><button>확인</button>
            </div>
        </div>
        <div id="pinfoname"> 
            <div id="nameboxup">
                <h2>현재 주민등록번호를 확인하세요</h2>
            </div>
            <div id="nameboxdown">
                <span>*******-*******</span>
            </div>
         </div>
         <div id="pinfoname">
            <div id="nameboxup">
                <h2>현재 이름를 확인하세요</h2>
                <div id="nameboxdown">
                    <h2><c:out value="${memVo.memName}"/></h2>
                </div>
            </div>
         </div>
         <div id="pinfoname"> 
            <div id="nameboxup">
                <h2>현재 휴대전화번호를 확인하세요</h2>
            </div>
            <div id="nameboxdown">
                <h2><c:out value="${memVo.memPhone}"/></h2>
            </div>
         </div>
         <div id="pinfoname"> 
            <div id="nameboxup">
                <h2>현재 이메일를 확인하세요</h2>
            </div>
            <div id="nameboxdown">
                <h2><c:out value="${memVo.memEmail}"/></h2>
            </div>
         </div>
    <button id="delsubmit">변경</button>
    </div>
    </div>
</div>
</form>
</body>
</html>