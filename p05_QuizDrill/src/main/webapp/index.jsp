<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>미술관 전시회</title>
    <link rel="stylesheet" href="/style/style.css">
    <script src="/script/jquery-3.6.0.min.js"></script>
    <script src="/script/script.js"></script>
</head>
<body>
    <jsp:include page="/inc/header.jsp" flush="true"/>
    <div id="wrap">
        <main id="main">
            <div id="slideshowArea">
                슬라이드 쇼 영역
            </div>
            <!-- div#slideshowArea -->
            <div id="contents" class="dFlex">
                <div id="bbsNotice" class="contentParts">
                    공지사항
                </div>
                <!-- div#bbsNotice -->

                <div id="bbsGallery" class="contentParts">
                    갤러리
                </div>
                <!-- div#bbsGallery -->

                <aside id="bannerArea" class="contentParts">
                    배너
                </aside>
                <!-- aside#bannerArea -->
            </div>
            <!-- div#contents -->

        </main>
    </div>
    <!-- div#wrap -->
 	<%@ include file="/inc/footer.jsp" %>
<%--  	<jsp:include page="/inc/footer.jsp" flush="true"/> --%>
</body>
</html>