jQuery(document).ready(function() {

	var
		degress=0,
		timer = setInterval(function() {
			degress++;
			jQuery('.navbar-default').css('background-image', 'linear-gradient(' + degress + 'deg, rgba(37,53,196,1) 0%,rgba(48,113,255,1) 100%)');

		}, 30000 / 360);

});
