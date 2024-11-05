<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");

String testId = "test";
String testPw = "1234";

if(userId.equals(testId) && userPw.equals(testPw)){	
	session.setAttribute("sKey", userId);
%>
<script>
	alert("로그인 되었습니다.")
	location.href = "/main.jsp"
</script>
<%}else{%>
<script>
	alert("아이디 혹은 비밀번호가 틀렸습니다.")
	history.back();
</script>
<%}%>

