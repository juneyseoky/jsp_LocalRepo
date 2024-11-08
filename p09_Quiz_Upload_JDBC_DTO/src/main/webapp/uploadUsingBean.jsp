<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="fuo" class="pack.ex.FUO"/>
<jsp:useBean id="fileBean" class="pack.jdbc.FileBean"/>
<%
long startTM = System.currentTimeMillis();
boolean res1 = fuo.mtdUpload(request, fileBean);
%>
<jsp:useBean id="conn" class="pack.jdbc.DBConn"/>
<%
boolean res2 = conn.insertFile(fileBean);

long endTM = System.currentTimeMillis();

System.out.print("파일 전송 시간 : " + (endTM - startTM) + " ms");
%>

<div id="wrap">
	<%if(res1 && res2){ %>
		<p>입력 성공</p>
	<%}else{ %>
		<p>입력 실패</p>
	<% }%>
	<button onclick='location.href="/fileSend.html"'>돌아가기</button>
</div>
	<!-- div#wrap -->
 