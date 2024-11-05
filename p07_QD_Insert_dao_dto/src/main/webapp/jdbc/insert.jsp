<%@page import="pkg.jdbc.DBConn"%>
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
	<jsp:useBean id="goodsBean" class="pkg.jdbc.DataBean"/>
	<jsp:setProperty property="*" name="goodsBean"/>
	<%
	DBConn conn = new DBConn();
	
	int rs = conn.insertGoods(goodsBean);
	
	if(rs == 1){
	%>
		<h3>데이터 입력 완료</h3>
	<%}else{ %>
		<h3>데이터 입력 실패</h3>
	<%} %>
 		<div id='btnArea'>
 			<button onclick='history.back()'>돌아가기</button>
 		</div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    