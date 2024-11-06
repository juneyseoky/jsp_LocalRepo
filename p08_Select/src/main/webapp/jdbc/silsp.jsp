<%@page import="pkg.jdbc.DataBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dbConn" class="pkg.jdbc.DBConn"/>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>JDBC 조회</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap">
		<h1>상품목록</h1>
		<div id="goodsListArea">
			<div id="listHeader" class="listCol dFlex">
				<span>번호</span>
				<span>상품코드</span>
				<span>상품명</span>
				<span>가격</span>
				<span>재고</span>
			</div>
			<%
			ArrayList<DataBean> list = dbConn.selectGoods();
			// ArrayList로 return하는 dbConn.selectGoods를 담는 객체 생성
			for(DataBean goods : list){	
			// list에 담긴 DTO들을 goods로 하나씩 설정
			%>
			<div class="listRow listCol dFlex">
				<span><%=goods.getNum()%></span>
				<span><%=goods.getGoodsCode()%></span>
				<span><%=goods.getGoodsName()%></span>
				<span><%=goods.getPrice()%></span>
				<span><%=goods.getCnt()%></span>
			</div>
			<%	
			}
			%>
		</div>
	</div>
	<!-- div#wrap -->
</body>
</html>    