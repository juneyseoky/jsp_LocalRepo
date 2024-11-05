const path = window.location.pathname;
const fileName = path.substring(path.lastIndexOf('/') + 1);
const file = fileName.split(".")[0];

$(function(){
	$("#"+file).css("font-weight","bold")
});
console.log(file); // 현재 파일명 출력
