<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="../style/style.css?v">
</head>
<body>
	<div id="wrap">
	
	<h1>상풍 등록</h1>
	<hr>
	<form action="infoPrint.jsp">
		<ul>
			<li>
				<span>상품명</span>
				<input type="text" name="goodsName">
			</li>
			<li>
				<span>분류</span>
				<label>
					<span>신상품</span>
					<input type="radio" name="rdo" value="신상품" checked>
				</label>
				<label>
					<span>리퍼</span>
					<input type="radio" name="rdo" value="리터">
				</label>
			</li>
			<li>
				<span>제조사</span>
				<select name="company">
					<option>삼성</option>
					<option>LG</option>
					<option>GE</option>
				</select>
			</li>
			<li>
				<button>등록</button>
			</li>
		</ul>
	</form>
		
	</div>
	<!-- div#wrap -->
	<script src="../script/jquery-3.7.1.min.js"></script>
	<script src="../script/script.js"></script>
</body>
</html>    