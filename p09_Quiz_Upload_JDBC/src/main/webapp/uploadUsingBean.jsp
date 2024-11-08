<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="fuo" class="pack.ex.FUO"/>
<%
boolean chk = fuo.mtdUpload(request);
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
		<h1>업로드</h1>
		<%if(chk){ %>
		<p>업로드 성공</p>
		<%} else { %>
		<p>업로드 실패</p>
		<%} %>
		<button onclick='history.back()'>돌아가기</button>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    