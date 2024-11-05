<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
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
<%
Connection conn = null;
PreparedStatement pstmt = null;

String goodsCode = request.getParameter("goodsCode");
String goodsName = request.getParameter("goodsName");
int price = Integer.parseInt(request.getParameter("price"));
int cnt = Integer.parseInt(request.getParameter("cnt"));

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/sampleData?";
	url += "userSSl=false&";
	url += "userUnicode=true&";
	url += "characterEncoding=UTF8&";
	url += "serverTimezone=Asia/Seoul&";
	url += "allowPublicKeyRetrieval=true";
	
	String uid = "root";
	String pwd = "1234";
	
	conn= DriverManager.getConnection(url, uid, pwd);
	String sql = "insert into goodsList(goodsCode, goodsName, price, cnt) ";
	sql += "values (?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, goodsCode);
	pstmt.setString(2, goodsName);
	pstmt.setInt(3, price);
	pstmt.setInt(4, cnt);
	
	int res = pstmt.executeUpdate();
	if(res == 1){
		out.print("<h3>데이터 입력 완료</h3>");
 		out.print("<div id='btnArea'><button onclick='history.back()'>돌아가기</button></div>");
}else{
		out.print("데이터 입력 실패");
	}
}catch(ClassNotFoundException e ){
	out.print(e.getMessage());
	
}catch(SQLException e){
	out.print(e.getMessage());
}
%>

		
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    