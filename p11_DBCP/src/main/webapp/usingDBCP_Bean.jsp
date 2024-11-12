<%@page import="pkg.dbcp.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Connection conn = null;
try{
	// static(정적) 메소드는 객체를 생성할 필요없이
	// 바로 가져와 사용할 수 있다.
	conn = DBConn.mtdGetConn();
}catch(Exception e){
	out.print(e.getMessage());
}finally{
	try{if(conn != null) conn.close();}catch(Exception e){}
}
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
		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    