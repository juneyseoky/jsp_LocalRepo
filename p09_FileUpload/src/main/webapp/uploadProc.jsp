<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String saveFolder = "D:\\Java_Web_AI\\silsp\\JSP\\p09_FileUpload\\src\\main\\webapp\\fileStorage";
int maxSize = 5*1024*1024; // 5MByte 까지 최대 업로드 허용
String encType = "UTF-8";

String subject = "";
String content = "";

String oriFileName = ""; // 원본 파일명
String upLoadName = ""; // 업로드후 저장된 파일명
int fileSize = 0; // 파일 크기
try{
	MultipartRequest mr = new MultipartRequest(
		request, saveFolder,maxSize, encType, new DefaultFileRenamePolicy()
		);
	subject = mr.getParameter("subject"); // request 객체가 MultipartRequest의 매개변수로
	content = mr.getParameter("content"); // 넘어가 MultipartRequest의 객체인 mr에서
										  // request안에 있는 메서드들을 사용할수 있음
										  
	oriFileName = mr.getOriginalFileName("fileName"); // 원본 파일명
	upLoadName = mr.getFilesystemName("fileName");	  // 업로드 후 저장된 파일명
	
	// 파일 크기 산출
	File file = mr.getFile("fileName");
	fileSize = (int)file.length();
	
}catch(IOException e){
	out.print(e.getMessage());
}
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
		<h1>업로드</h1>
		<p>제목 : <%=subject %></p>
		<p>내용 : <%=content %></p>
		<p>원본파일명 : <%=oriFileName %></p>
		<p>업로드파일명 : <%=upLoadName %></p>
		<p>파일크기 : <%=fileSize %></p>
		<button onclick='history.back()'>돌아가기</button>
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.7.1.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>    