<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
try{
	Context init = new InitialContext();
	DataSource dataSource = (DataSource)init.lookup("java:comp/env/jdbc/dbcpConn");
	conn = dataSource.getConnection();
	
	String sql = "select * from goodsList order by num desc";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
	while(rs.next()){
%>
			<div class="listRow listCol dFlex">
				<span><%=rs.getInt("num")%></span>
				<span><%=rs.getString("goodsCode")%></span>
				<span><%=rs.getString("goodsName")%></span>
				<span><%=rs.getInt("price")%></span>
				<span><%=rs.getInt("cnt")%></span>
			</div>
<%	
	}
	
}catch(Exception e){
	out.print(e.getMessage());
}finally{
	try{
		if(rs != null) rs.close();
		if(stmt != null) stmt.close();
		if(conn != null) conn.close();
	}catch(Exception e){}
}
%>			
		</div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    