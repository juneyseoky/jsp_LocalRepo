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
	<div id="wrap">
		<h1>Bean 실행 페이지</h1>
		<hr>
		<span class="bold">수신&전송데이터 : </span>
		<jsp:useBean id="txt" class="pkg.DataPrn"/>
		<jsp:setProperty property="*" name="txt"/>
		<span class="bold"><%=txt.getTxt() %></span>

	</div>
	<!-- div#wrap -->
</body>
</html>    