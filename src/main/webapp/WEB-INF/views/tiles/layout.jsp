<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 타일즈의 title속성값을 문자열로서 이 위치에 주입 -->
<title>옥상공유플랫폼 옥따</title>
 
	<!-- head.css -->
	<link>
	
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
</head>

 <head>
        <tiles:insertAttribute name="head" />
    </head>
    <!-- body부분 -->
    <body>
           
       <tiles:insertAttribute name="body" />
    </body>
    <!-- footer부분 -->
	<footer>
	 <tiles:insertAttribute name="footer" />
	</footer>
</html>