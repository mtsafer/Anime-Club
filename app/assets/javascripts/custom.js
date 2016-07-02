$(document).ready(function(){
	$(".clickable").click(function(e) {
    e.stopPropagation();
	});
});
