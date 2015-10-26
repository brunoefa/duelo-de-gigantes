$(document).ready(function(){
	
	$("#imagem1").blur(function(){
		src = $(this).val();
		if (src != "") {
			$("#avatar1").attr("src",src);
		}
	})
	
	$("#imagem2").blur(function(){
		src = $(this).val();
		if (src != "") {
			$("#avatar2").attr("src",src);
		}
	})
});