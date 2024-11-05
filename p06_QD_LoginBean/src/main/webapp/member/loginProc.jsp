<%@page import="pkg.mem.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userId = request.getParameter("userId");
String userPw = request.getParameter("userPw");

LoginBean lb = new LoginBean();
boolean rs = lb.chkAccount(userId, userPw);

if(rs) {
%>
<script>
	alert("로그인 되었습니다.");
	location.href = "/member/welcome.jsp?userId=<%= userId %>";
</script>
<%
} else {
%>
<script>
	alert("아이디 혹은 비밀번호가 틀렸습니다.");
	location.href = "/member/login.jsp";
</script>
<%
}
%>
