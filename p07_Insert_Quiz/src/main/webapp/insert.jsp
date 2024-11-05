<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;
PreparedStatement pstmt = null;

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/insertQuiz?";
	url += "userSSl=false&";
	url += "userUnicode=true&";
	url += "characterEncoding=UTF8&";
	url += "serverTimezone=Asia/Seoul&";
	url += "allowPublicKeyRetrieval=true";
	
	String uid = "root";
	String pwd = "1234";
	
	conn= DriverManager.getConnection(url, uid, pwd);
	
	String title = "연습글입니다.";
	String content = "글내용 테스트";
	String writer = "테스터01";
	
	
	String sql = "insert into bbs (title, content, writer) ";
	sql += "values( ?, ?, ?)";
	
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, writer);
	
	int res = pstmt.executeUpdate();
	
	if(res == 1){
		out.print("등록 성공");
	}else{
		out.print("등록 실패");
	}
	
	
}catch(ClassCastException e){
	out.print(e.getMessage());
}catch(SQLException e){
	out.print(e.getMessage());
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