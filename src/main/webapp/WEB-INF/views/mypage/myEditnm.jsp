<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

		<!DOCTYPE html>
		<html>
		<head>
		<meta charset='UTF-8'>
		<link href="/css/personalinfo.css" rel="stylesheet" />
		<title>Insert title here</title>
		</head>
		<body>
		
<jsp:include page="/WEB-INF/views/comm/menu.jsp"/>
		<form action='${pageContext.request.contextPath}/mypage/editnm.do' method='post'>
		<input type='hidden' name='memId' value="${memVo.memPhone}"> 
		<input type='hidden' name='memId' value="${memVo.memName}"> 
		<input type='hidden' name='memId' value="${memVo.memEmail}"> 
		
		 <div id="biggest">
            <h3>계정 > 개인정보</h3>
            <h1>개인정보수정</h1>
	        <div id="biggest2">
	            <div id="rightfix">
	                <div id="questionimg">
			</div>
	                
	               
	            </div>
	
	            <div id="pinfoname"> <!--  pinfo=personal information -->
	                <div id="change">
	                    <button>수정</button>
	                </div>
	                <div id="nameboxup">
	                    <h2><c:out value="${loginUser.memName}"/></h2>
	                </div>
	                <div id="nameboxdown">
	                   <input type = 'text' name='memName' style="border:none; background:transparent;" /><br>
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
	                    <input type='text' name='memEmail' style="border:none; background:transparent;"/>
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
	            <div id="pinfoname"> <!--  pinfo=personal information -->
	                <div id="change">
	                    <button>수정</button>
	                </div>
	                <div id="nameboxup">
	                     <h2><c:out value="${memVo.memPhone}"/></h2>
	                </div>
	                <div id="nameboxdown">
	                    <input type='text' name='memPhone' style="border:none; background:transparent;"/>
	                </div>
	                
	            </div>
	            <div id="pinfoname"> <!--  pinfo=personal information -->
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
	           </div>




    </div> 
		
		
			
			
			
			
			<input type = 'submit'/>
				
		</form>
		
		</body>
		</html>
		
		
		
		
		<%-- <a href='${pageContext.request.contextPath}/member/list.do'><input type="button" value="목록"></a> --%>