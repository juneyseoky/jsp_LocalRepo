<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- HTML 주석
JSP Script
1. 선언문 Declaration(디클러레이션) 클래스 영역
2. 스크립트릿 Scriptlet 			메소드 영역
3. 표현식 Expression (익스프레션)	출력 영역
4. 주석 Comment(코멘트)
 -->
 
 <%! /* 선언문 */
 public void mtd() {
	String txt = "오렌지";
}
%>
 
 <% 	/* 스크립트릿 */
 int num;
 System.out.print("OK!!");
 %>

<%= 3 %> <!-- out.print(3);과 같고 출력영역을 나타낸다. -->