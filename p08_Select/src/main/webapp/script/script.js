$(()=>{
	$(".listRow>span").click(function(){
		let elm = $(this).prop('id');
		location.href = "goodsDelete.jsp?num="+elm;
	});
});