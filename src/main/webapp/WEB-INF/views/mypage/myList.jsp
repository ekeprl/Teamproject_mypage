<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        	
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<link href="/css/mylist.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
<title>Insert title here</title> 
</head>
<body> 




<div id="biggest">	
 
	
	
	<div id="biggest2">
	<h1> <c:out value="${loginUser.memName} "/> 님 마이페이지 </h1>
	
		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/edit.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup">
					<c:if test="${loginUser!=null}">
					
					</c:if>
				</div>
				<div id="infadown">
                    <h2>로그인 관리</h2>
                    <h3>비밀번호를 변경하세요</h3>
                </div>
			</div>
			</a>
		</div>
	
	

		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/editnm.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup1">
					<c:if test="${loginUser!=null}">
						
					</c:if>
					</div>
					<div id="infadown">
                    <h2>개인정보</h2>
                    <h3>개인정보를 수정/관리하세요</h3>
                </div>
				
			</div>
			</a>
		</div>
	
	
	
		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/hostadd.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup2">
					<c:if test="${loginUser!=null}">
						
					</c:if>
					</div>
					<div id="infadown">
                    <h2>호스트되기</h2>
                    <h3>직접 옥상을 등록할 수 있습니다.</h3>
                </div>
				
			</div>
			</a>
		</div>
	
	

		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/editnm.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup3">
					<c:if test="${loginUser!=null}">
						
					</c:if>
					</div>
					<div id="infadown">
                     <h2>알림설정</h2>
                        <h3>예약한 숙소와 연락을 주고받을 수 있습니다.</h3>
                </div>
				
			</div>
			</a>
		</div>
	
	
		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/editnm.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup4">
					<c:if test="${loginUser!=null}">
						
					</c:if>
					</div>
					<div id="infadown">
                     <h2>위시리스트</h2>
                        <h3>선호하는 위시리스트를 선택하세요</h3>
                </div>
				
			</div>
			</a>
		</div>
	

		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/editnm.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup5">
					<c:if test="${loginUser!=null}">
						
					</c:if>
					</div>
					<div id="infadown">
                     <h2>이벤트 게시판</h2>
                        <h3>프리미엄 이벤트를 확인하세요</h3>
                </div>
				
			</div>
			</a>
		</div>
	
	
	
		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/editnm.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup6">
					<c:if test="${loginUser!=null}">
						
					</c:if>
					</div>
					<div id="infadown">
                     <h2>도움말</h2>
                        <h3>궁금한 것을 찾아보세요</h3>
                </div>
				
			</div>
			</a>
		</div>
	
	

		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/editnm.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup7">
					<c:if test="${loginUser!=null}">
						
					</c:if>
					</div>
					<div id="infadown">
                     <h2>쿠폰등록</h2>
                        <h3>쿠폰을 입력할 수 있습니다.</h3>
                </div>
				
			</div>
			</a>
		</div>
	
	
	
		<div id="information">
		<a href="${pageContext.request.contextPath}/mypage/del.do?memId=${loginUser.memId}">
			<div id="infa">
				<div id="infaup8">
					<c:if test="${loginUser!=null}">
						
					</c:if>
					</div>
					<div id="infadown">
                    <h2>회원탈퇴</h2>
                    <h3>회원탈퇴를 할 수있습니다.</h3>
               
				</div>
			</div>
			</a>
		</div>
	
	</div>
	
</div>		

</body>
</html>
		

		
		
	
    
    
