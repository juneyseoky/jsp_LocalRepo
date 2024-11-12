<%@page import="java.sql.SQLException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Connection conn = null;

Context init = new InitialContext();
DataSource dataSource = (DataSource)init.lookup("java:comp/env/jdbc/dbcpConn");
// JNDI : Java Naming Directory Interface
// lookup("java:com/env/name 속성값")
// DB 접속과 관련된 내용을 갖고 있음.
// 이것을 메서드를 사용하여 DB를 접속한다.
try{
	conn = dataSource.getConnection();
	out.print("접속 OK");
	
	// Statement, PreparedStatemet, ResultSet 을
	// 사용한 CRUD 작업
	
}catch(SQLException e){
	
}finally{
	
	// autoReconnect=true 사용시 
	try{
		if(conn != null) conn.close();
	}catch(SQLException e){
		out.print("SQLE : "+ e.getMessage());
	}
	
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