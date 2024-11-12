$(() => {

	$("button#idChk").click(function() {
		let chkId = $("#memId").val().trim();
		if (chkId == "") {
			alert("아이디를 입력하세요.");
			$("#memId").focus();
		} else {

			$.ajax({
				type: "GET",
				url: "/member/joinIdChk.jsp",
				data: { "userId": chkId },
				dataType: "html",
				async: true,
				success: function(data) {
					console.log("수신된 html : " + data);
					if(parseInt(data) == 1){
						$("span#chkMsg").html("<b>사용중 ID.</b>");
					}else{
						$("span#chkMsg").html("<b>사용가능.</b>");
					}
					// 클라이언트에서 처리할 코드 영역
				},
				error: function(xhr, status, error) {
					console.error("비동기 통신 실패");
					console.error("상태 코드: " + xhr.status);       // HTTP 상태 코드 (예: 404, 500 등)
					console.error("상태 텍스트: " + status);         // 'error', 'timeout', 'abort' 등 상태 텍스트
					console.error("오류 메시지: " + error);          // 서버에서 반환된 오류 메시지
					console.error("응답 내용: " + xhr.responseText); // 서버에서 반환한 전체 응답 텍스트
				}
			});
		}
	});
})