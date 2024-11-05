<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="loginBean" class="pkg.mem.LoginBean" />
<jsp:setProperty name="loginBean" property="*" />

<%
boolean chk = loginBean.chkAccount(session, request);
%>

<script>
<% if (chk) { %>
	alert(`로그인 되셨습니다.`);
	location.href="welcome.jsp";
<% } else { %>
	alert(`일치하는 정보가 없습니다.`);
	history.back();
<% } %>
</script>