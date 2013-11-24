
window.addEventListener('load', function(){
	var pulse = new EventSource('/pulse');
	pulse.addEventListener('message', function(e){
		console.log('Pulse: ' + e.data);
	});
});