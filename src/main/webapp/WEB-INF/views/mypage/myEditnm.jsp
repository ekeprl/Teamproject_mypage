<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

		<!DOCTYPE html>
		<html>
		<head>
		<meta charset='UTF-8'>
		<link href="/css/personalinfo.css" rel="stylesheet" />
		<title>개인정보수정</title>
		</head>
		<body>
		<form action='${pageContext.request.contextPath}/mypage/editnm.do' method='post'>
		<input type='hidden' name='memId' value="${memVo.memId}"> 
		 <div id="biggest">
            <h3>계정 > 개인정보</h3>
            <h1>개인정보수정</h1>
	        <div id="biggest2">
	           <div id="pinfoname"> <!--  pinfo=personal information -->
	                <div id="change">
	                    <button>수정</button>
	                </div>
	                <div id="nameboxup">
	                    <h2><c:out value="${memVo.memName}"/></h2>
	                </div>
	                <div id="nameboxdown">
	                   <input type = 'text' name='memName' placeholder="이름을 입력해주세요"  style="width:450px; height:18px"/><br>
	                </div> 
	             </div>
	            <div id="pinfoname"> <!--  pinfo=personal information -->
	                <div id="change">
	                    <button>수정</button>
	                </div>
	                <div id="nameboxup">
	                    <h2>닉네임</h2>
	                </div>
	                <div id="nameboxdown">
	                    <span>닉네임1</span>
	                </div>
	            </div>
	            <div id="pinfoname"> <!--  pinfo=personal information -->
	                <div id="change">
	                    <button>수정</button>
	                </div>
	                <div id="nameboxup">
	                     <h2><c:out value="${memVo.memEmail}"/></h2>
	                </div>
	                <div id="nameboxdown">
	                    <input type='text' name='memEmail' placeholder="이메일을 입력해주세요" style="width:450px; height:18px"/>
	                </div>
	            </div>
	            <div id="pinfoname"> <!--  pinfo=personal information -->
	                <div id="change">
	                    <button>수정</button>
	                </div>
	                <div id="nameboxup">
	                    <h2>생년월일</h2>
	                </div>
	                <div id="nameboxdown">
	                    <span>****/**/**</span>
	                </div>
	            </div>
	            <div id="pinfoname"> 
	                <div id="change">
	                    <button>수정</button>
	                </div>
	                <div id="nameboxup">
	                     <h2><c:out value="${memVo.memPhone}"/></h2>
	                </div>
	                <div id="nameboxdown">
	                    <input type='text' name='memPhone' placeholder="전화번호를 입력해주세요" style="width:450px; height:18px" />
	                </div>
	            </div>
	            <div id="pinfoname"> 
	                <div id="change">
	                    <button>수정</button>
	                </div>
	                <div id="nameboxup">
	                    <h2>주소</h2>
	                </div>
	                <div id="nameboxdown">
	                    <span>등록하지 않음</span>
	                </div>
	            </div>
			  <input type="submit" style="float:right; width:100px; height : 30px; text-align:center; margin-right : 260px; "/>
			</div>
	            </div>
		</form>
		</body>
		</html>
