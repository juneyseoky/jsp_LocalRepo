<%@page import="java.sql.SQLException"%>
<%@page import="pkg.jdbc.DBConn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
<%
int num = 0;
int price = 0;
int chk = 0;
try{	
	num = Integer.parseInt(request.getParameter("num"));
	price = Integer.parseInt(request.getParameter("price"));
	DBConn conn = new DBConn();
	chk = conn.updateGoods(num, price);
	if(chk== 1){
%>
	alert("수정 완료");
	location.href = "/jdbc/silsp.jsp";
<%}else{%>
	alert("수정할 데이터가 없습니다.");
	history.back();
<%}%>
<%
}catch(NumberFormatException e){
%>
	alert("숫자만 입력하세요");
	location.href = "/jdbc/silsp.jsp";
<%}%>
</script>