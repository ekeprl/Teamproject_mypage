<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        	
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>회원탈퇴</title> 


<!-- BBS Style -->
<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
<!-- 공통 Style -->
<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link href="/css/delete.css" rel="stylesheet" />

</head>
<body> 

		<form action="${pageContext.request.contextPath}/mypage/del.do" id="passwordChangeForm"  method="post">
		<input type='hidden' name='memId' value="${memVo.memId}">
	<div id="biggest">
        <h3>계정 > 회원탈퇴</h3>
        <h1>탈퇴하려는 이유는 무엇인가요?</h1>
    <div id="biggest2">
<div id="delsize">

        <div id="pinfoname">  
            <div id="change">
                <input type="checkbox" id="check"/>
            </div>
            <div id="nameboxup">
                <h2>안전 또는 사생활에 관한 우려가 있습니다.</h2>
            </div>
           
         </div>

        <div id="pinfoname">  
            <div id="change">
                <input type="checkbox" id="check"/>
            </div>
            <div id="nameboxup">
                <h2>더 이상 사용하고 싶지 않습니다.</h2>
            </div>
            
            
            
        </div>
        <div id="pinfoname">  
            <div id="change">
                <input type="checkbox" id="check"/>
            </div>
            <div id="nameboxup">
                <h2>기타</h2>
            </div>
         </div>

         <div id="pinfoname2"> 
            <h2>정보확인</h2>
            <div id="nameboxup">
                
                <div id="nameboxdown">
                   <span>PW:  </span><input type="password" id="memPass" name="memPass" placeholder="비밀번호 확인" style="width:450px; height:18px"/><br/>
                   <span>확인: </span><input type="password" id="memPassr" name="memPassr" placeholder="비밀번호 확인" style="width:450px; height:18px"/><input type="button" value="확인" id="passwordCheckBtn" > 
                </div>
            </div>
         </div>
     <input  type="submit"></input>
    </div>
    </div>
      
</div> 
		</form>

<script>
var validate = false; //성공여부
function check(){
	var pwd1 = $("#memPass").val();
    var pwd2 = $("#memPassr").val();
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
		

		
		
	
    
    
