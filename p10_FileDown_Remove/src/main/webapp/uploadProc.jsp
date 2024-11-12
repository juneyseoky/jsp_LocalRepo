<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/style/style.css?v">
</head>
<body>
	<div id="wrap" class="upWrap">
		<h1>파일 처리 페이지</h1>
		<hr>
    
<%
String saveFolder = "D:\\Java_Web_AI\\silsp\\JSP\\p10_FileDown_Remove\\src\\main\\webapp\\fileStorage";
int maxSize = 5*1024*1024; // 5MByte 까지 최대 업로드 허용
String encType = "UTF-8";

String upFileName = "";
int fileSize = 0; // 파일 크기
try{
	MultipartRequest mr = new MultipartRequest(
		request, saveFolder,maxSize, encType, new DefaultFileRenamePolicy()
		);
	upFileName = mr.getFilesystemName("fileName");
	
%>
		 <ul id="prnSummary">
		 	<li>저장된 파일명 <%=upFileName %></li>
		 	<li>Upload OK</li>
		 </ul>
<%
	// 파일 크기 산출
	File file = mr.getFile("fileName");
	fileSize = (int)file.length();
	
}catch(IOException e){
	out.print(e.getMessage());
}
%>
    <hr>
    <div id="btnArea">
    	<input type="hidden" id="upFileName" value = "<%=upFileName%>">
    	<button type="button" id="downloadBtn">다운로드</button>
    	<button type="button" id="removeBtn">파일삭제</button>
		<button type="button" id="goInput" onclick='history.back()'>돌아가기</button>
    </div>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    