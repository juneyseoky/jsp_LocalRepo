<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="fuo" class="pack.ex.FDO"/>
<%
request.setCharacterEncoding("UTF-8");

boolean remChk = fuo.mtdDelete(request);
%>
<script>
<% if(remChk){%>
	alert("파일을 삭제했습니다.");
	location.href="/fileSend.html";
<%}else{%>
	alert("삭제 중 문제가 발생했습니다.");
	history.back();
<%}%>
</script>
   