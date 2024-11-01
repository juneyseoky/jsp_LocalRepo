const btnDom = document.querySelector("button");
btnDom.addEventListener("click",()=>{
let dateDom = document.querySelector("#inDate").value;
	location.href="comingSoon.jsp?inDate="+dateDom;
});