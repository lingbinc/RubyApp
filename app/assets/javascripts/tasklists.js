$(function(){
	$(".show-button").click(function(){
		$(".clickablerow_more").toggle("slow");
		$(".description-row_more").attr("style","display:none");
		$(this).attr("value",($(this).val()=="+")?"-":"+");
	});
	
	$(".complete-btn")
		.mouseover(function() {
			$(this).attr("src","/assets/tick.png");
		})
		.mouseout(function() {
			$(this).attr("src","/assets/circle.png");
		});
	$(".clickablerow").click(function(){
		$("#task_description_"+$(this).attr("id")).toggle("slow");
	});

	$(".clickablerow_more").click(function(){
		$("#task_description_"+$(this).attr("id")).toggle("slow");
	});


});

