$(function(){
	$(".show-button").click(function(){
		$(".more_table").toggle("slow", function(){});
		$(this).attr("value",($(this).val()=="+")?"-":"+");
	});
	
	$(".complete-btn")
		.mouseover(function() {
			$(this).attr("src","/assets/tick.png");
		})
		.mouseout(function() {
			$(this).attr("src","/assets/circle.png");
		});
});

