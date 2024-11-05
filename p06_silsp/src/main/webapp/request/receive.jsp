<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String data = request.getParameter("test");
String ipAddr = request.getRemoteAddr();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>수신페이지</title>
	<link rel="stylesheet" href="/style/style.css?v">
	<style>
	p{
	font-size: 19px;
	font-weight: bold;
	}</style>
</head>
<body>
	<div id="wrap">
		<p>
			전송데이터 : <%=data%>		
		</p>
		<p>
			접속 아이피 : <%=ipAddr%>		
		</p>
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    