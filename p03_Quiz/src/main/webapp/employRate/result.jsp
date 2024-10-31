<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	double passer = Double.parseDouble(request.getParameter("passer"));
	double employer = Double.parseDouble(request.getParameter("employer"));
	
	double res = employer / passer * 100;
	
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
		<span id="resSpan">취업률 : <%=String.format("%.1f",res) %></span>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    