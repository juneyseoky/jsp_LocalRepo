<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String resSkey = (String)session.getAttribute("sKey");
boolean sessionVal = false;
if(resSkey != null){
	sessionVal = true;
}
%> 
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>GNB 메뉴 Login 세션처리</h1>
		<div id="gnbArea">
			<span id="main"><a href="main.jsp">Home</a></span>
			<span>|</span>
			<%if(sessionVal){%>
			<span><a href="#">마이페이지</a></span>
			<%}else{%>
			<span><a href="#">회원가입</a></span>
			<%}%>
			<span>|</span>
			<%if(sessionVal){%>
			<span id="logout"><a href="/member/logout.jsp">로그아웃</a></span>
			<%}else{%>
			<span id="login"><a href="/member/login.jsp">로그인</a></span>
			<%}%>		
		</div>
		<hr>
		<div id="nowStatusArea">
			<%if(sessionVal){%>
			<span>메인페이지(<%=resSkey %>님 로그인 상태)</span>
			<%}else{%>
			<span>메인페이지(로그아웃 상태)</span>
			<%}%>
		</div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    