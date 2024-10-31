<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int fNum = Integer.parseInt(request.getParameter("fNum"));
	int sNum = Integer.parseInt(request.getParameter("sNum"));
	int[] numList = {fNum, sNum};
	Arrays.sort(numList);
	
	int min = numList[0];
	int max = numList[numList.length-1];
	
	/* int min = numList[0];
    int max = numList[0];
	for (int i = 1; i < numList.length; i++) {
        min = Math.min(min, numList[i]);
        max = Math.max(max, numList[i]);
    } */
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
		<%
		int sum = 0;	
		for(int i = min; i<=max; i++){
			sum += i;
			if(i== max){
				out.print(i + " = ");
			}else{
				out.print(i + " + ");	
			}
		}
		%>
		<%=sum %>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    