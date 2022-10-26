<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

		<!DOCTYPE html>
		<html>
		<head>
		<meta charset='UTF-8'>
		<link href="/css/passchange.css" rel="stylesheet" />
		<title>비밀번호 변경</title>
		</head>
		<body>
		<form action='${pageContext.request.contextPath}/mypage/edit.do' id="passwordChangeForm" method='post'>
		<input type='hidden' name='memId' value="${memVo.memId}">
		    <div id="biggest">
        <h3>계정 > 비밀번호 수정</h3>
        <h1>비밀번호를 새로 설정하세요.</h1>
    <div id="biggest2">
		<div id="delsize">
        <div id="pinfoname">
            <div id="nameboxup">
                <h2>현재 비밀번호를 입력하세요</h2>
            </div>
            <div id="nameboxdown">
                <input type = 'password' name='memPass' placeholder="현재 비밀번호를 입력해주세요" style="width:450px; height:18px"/>
            </div>
         </div>
        <div id="pinfoname"> 
            <div id="nameboxup">
                <h2>변경하실 비밀번호를 입력하세요</h2>
            </div>
            <div id="nameboxdown">
                <input type = 'password' id="memnPass" name='memnPass' class="pw" placeholder="변경할 비밀번호를 입력해주세요" style="width:450px; height:18px"/>
            </div>
        </div>
        <div id="pinfoname"> 
            <div id="nameboxup">
                <h2>비밀번호를 한번 더 입력하세요</h2>
            </div>
            <div id="nameboxdown">
                <input type = 'password' id="memnPassr" name='memnPassr' class="pw" placeholder="변경할 비밀번호를 입력해주세요" style="width:450px; height:18px"/>
            </div>
        </div>
        <div id="pinfoname">
            <div id="nameboxup">
                <h2>비밀번호 확인</h2>
            </div>
            <div id="nameboxdown">
                <input type="button" value="확인" id="passwordCheckBtn" > 
            </div>
         </div> 
    <input type = 'submit' id="submit" style="width:150px; height:30px;" />
    </div>
    </div>
</div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

var validate = false; //성공여부
function check(){
	var pwd1 = $("#memnPass").val();
    var pwd2 = $("#memnPassr").val();

    if ( pwd1 != '' && pwd2 == '' ) {
    	alert("비밀번호를 한번 더 입력해주세요.");
        return false;
    } else if (pwd1 != "" || pwd2 != "") {
        if (pwd1 == pwd2) {
        	alert("맞습니다!");
            $("#alert-success").css('display', 'inline-block');
            $("#alert-danger").css('display', 'none');
            return true;
        } else {
            alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");
            $("#alert-success").css('display', 'none');
            $("#alert-danger").css('display', 'inline-block');
            
        }
    }
    return false;
}

$(document).ready(function() {
	$("#passwordCheckBtn").click(function(e) {
		e.preventDefault();
		validate = check();
	});
    $("#passwordChangeForm").submit(function() {
        if(!validate) {
			alert("비밀번호를 확인해주세요");
            return false;
		}
    });
	
	
});
</script>
		</body>
		</html>
