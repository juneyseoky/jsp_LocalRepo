<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="loginWrap">
		<h1>로그인 페이지</h1>
		<div id="gnbArea">
			<span id="main"><a href="../main.jsp">Home</a></span>
			<span>|</span>
			<span><a href="#">회원가입</a></span>
			<span>|</span>
			<span id="login"><a href="/member/login.jsp">로그인</a></span>
		</div>
		<hr>
		<form action="loginProc.jsp">
			<label>		
				<input type="text" name="userId" placeholder="아이디 입력" autofocus>
			</label>
			<label>
				<input type="text" name="userPw" placeholder="비밀번호 입력">		
			</label>
			<div id="btnArea">
				<button>로그인</button>					
			</div>
		</form>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    