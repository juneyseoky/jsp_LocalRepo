<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="loginWrap">
		<h1>로그인 페이지</h1>
		
		<hr>
		<main id="main">
			<form action="loginProc.jsp">
			
				<input type="text" name="uid" placeholder="아이디 입력" autofocus>
				<input type="text" name="upw" placeholder="비밀번호 입력">
				
				<button>로그인</button>
				
			</form>
		</main>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    