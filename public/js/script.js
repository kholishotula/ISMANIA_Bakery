$(document).ready(function(){

	$("#text_cake").click(function(){
		$("#cake").toggle("slow");
	});
	$("#text_bread").click(function(){
		$("#bread").toggle("slow");
	});
	$("#text_cookies").click(function(){
		$("#cookies").toggle("slow");
	});

	blink_pic();
	function blink_pic(){
		setInterval(function(){
			$("#promo1").fadeOut(400);
			$("#promo1").fadeIn(600);
		}, 100);
		setInterval(function(){
			$("#promo2").fadeOut(400);
			$("#promo2").fadeIn(600);
		}, 500);
		setInterval(function(){
			$("#promo3").fadeOut(400);
			$("#promo3").fadeIn(600);
		}, 900);	
	};

	$("#tosee").hover(function(){
		$("#poptext").toggle();
	});

	$("#open-button").click(function(){
		document.getElementById("myForm").style.display = "block";
	});
	$("#close-button").click(function(){
		document.getElementById("myForm").style.display = "none";
	});
});