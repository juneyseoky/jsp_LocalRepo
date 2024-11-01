<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String numParam = request.getParameter("num");

    int num = 0;
    boolean isValidInput = false;

    if (numParam != null && !numParam.isEmpty()) {
        try {
            num = Integer.parseInt(numParam);
            isValidInput = (num >= 3 && num <= 9); 
        } catch (NumberFormatException e) {
            isValidInput = false;
        }
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>숫자 출력 페이지</title>
    <link rel="stylesheet" href="/style/style.css">
</head>
<body>
    <div id="wrap">
        <h2>숫자 입력 후 결과 보기</h2>
        <p>3 ~ 9 사이의 값을 입력하세요:</p>
        <form method="post">
            <input type="text" name="num" value="<%=num%>"> 
            <button>결과 보기</button>
        </form>
        
        <div id="txtArea">
            <h3>[출력 영역]</h3>
            <div id="res">
                <%
                if (isValidInput) {
                    int cnt = 1;
                    for (int y = 1; y <= 10; y++) {
                        for (int i = 1; i <= 10; i++) {
                            if (i < 10) {
                                out.print(cnt + " ");
                            } else {
                                out.print(cnt);
                            }
                            cnt++;
                            if (cnt > num) {
                                cnt = 1;
                            }
                        }
                        out.print("<br>");
                    }
                } else if (numParam != null) {
                    out.print("<p style='color: red;'>3에서 9 사이의 숫자를 입력하세요.</p>");
                }
                %>
            </div>
        </div>
    </div>
    <script type="text/javascript" ></script>
</body>
</html>
