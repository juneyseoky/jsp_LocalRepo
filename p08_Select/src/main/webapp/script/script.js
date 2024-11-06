$(()=>{
	$("span").click(()=>{
		let elm = $(this).prop('id');
		console.log(elm);
	});
});