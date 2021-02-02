$(".images").prepend($(".images li:last"));
$(".images").css("marginLeft", "-100%");
function imgSlider(){
	$(".images").stop().animate({marginLeft: "-=100%"}, function(){
		$(this).append($("li:first", this));
		$(this).css({marginLeft: "-100%"})
})
}
	var timing = setInterval(imgSlider, 3000)