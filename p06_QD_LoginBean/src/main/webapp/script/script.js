const path = window.location.pathname;
const fileName = path.substring(path.lastIndexOf('/') + 1);
const fileFirstName = fileName.split(".")[0];

$(function(){
	$("#"+fileFirstName).css("font-weight","bold")
});