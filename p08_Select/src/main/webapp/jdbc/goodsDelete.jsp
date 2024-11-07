<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="conn" class="pkg.jdbc.DBConn"/>

<%
String num = request.getParameter("num");
int chk = conn.deleteGoods(num);
%>
<script>
if(<%=chk%> == 1){
	alert("삭제 성공")
}else{
	alert("삭제 실패")
}
location.href = "silsp.jsp";
</script>