$(()=>{
//	다운로드 시작
	$("#downloadBtn").click(()=>{
		let fName = $("#upFileName").val();
		location.href = "/download.jsp?fName="+fName;
	});
	// 파일 삭제 
	$("#removeBtn").click(()=>{
		let fName = $("#upFileName").val();
		location.href = "/fileremove.jsp?fName="+fName;
	});
});