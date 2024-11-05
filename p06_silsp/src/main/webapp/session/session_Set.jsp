<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String uid = request.getParameter("uid");

session.setAttribute("sKey", uid);
session.setMaxInactiveInterval(20);

String sKey = (String)session.getAttribute("sKey");
out.print("<h3>세션 sKey 속성 값 : " + sKey + "</h3>");
out.print("<h3>세션 아이디(session 난수) : " + session.getId()+ "</h3>");
out.print("<h3>"+ application.getRealPath("/")+"</h3");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>

</body>
</html>    