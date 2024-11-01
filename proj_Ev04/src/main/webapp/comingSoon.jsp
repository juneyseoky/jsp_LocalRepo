<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 현재 날짜(년, 월, 일)로 변수정의
LocalDate now = LocalDate.now();
int toYear = now.getYear();
int toMonth = now.getMonthValue();
int toDay = now.getDayOfMonth();

// openDaySel.html에서 파라미터로 보낸 값을 받아
// DateTimeFormatter로 날짜데이터로 포맷한다.
// 포맷한 openDate를 날짜(년, 월, 일)로 변수 정의
String date = request.getParameter("inDate");
DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate openDate = LocalDate.parse(date, formatter);
int openYear = openDate.getYear();
int openMonth = openDate.getMonthValue();
int openDay = openDate.getDayOfMonth();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="comingWrap">
		<div id="prnArea">
			<div id="today">
				<span>Today</span>
				<input type="text" id="toYear" value="<%= toYear %>">년
				<input type="text" id="toMonth" value="<%= toMonth %>">월
				<input type="text" id="toDay" value="<%= toDay %>">일
			</div>
			<div id="open">
				<span>Open</span> 
				<input type="text" id="openDay" value="<%= openYear %>">년
				<input type="text" id="openDay" value="<%= openMonth %>">월
				<input type="text" id="openDay" value="<%= openDay %>">일
			</div>
			<h2>COMING SOON</h2>
			<div id="resTxtArea">
				<!-- LocalDate객체로 만든 openDate와 ChronoUnit.DAYS이라는 상수를 -->
				<!-- LocalDate에 until 메서드에 호출하여 일 단위로 계산함 -->
				<p>오픈 <%= now.until(openDate,ChronoUnit.DAYS) %>일전</p>
				<!-- ChronoUnit.YEARS, ChronoUnit.MONTHS.... -->
				<!-- 등으로 여러 상수들로 날짜, 시간단위로 계산할수 있다. -->
			</div>
		</div>
	</div>
	<!-- div#wrap -->
</body>
</html>    