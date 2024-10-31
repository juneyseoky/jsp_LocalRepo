<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String goodsName = request.getParameter("goodsName");
	String rdo = request.getParameter("rdo");
	String company = request.getParameter("company");
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
		<h1>등록된 상품 정보</h1>
		<hr>
		<ol>
			<li>
				<span>상품명 : </span>
				<%=goodsName%>
			</li>
			<li>
				<span>분류 : </span>
				<%=rdo%>
				
			</li>
			<li>
				<span>제조사</span>
				<%=company%>
			</li>
		</ol>
		<div id="btnArea">
			<button>추가 등록하기</button>		
		</div>

		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    