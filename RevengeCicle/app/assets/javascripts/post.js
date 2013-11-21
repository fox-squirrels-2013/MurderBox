$(function(){

	function onSuccess(e, response){
		$("ul").prepend(response);
	}

	function onError(e, xhr) {
		debugger
	}

	$(".posting form").on('ajax:success', onSuccess)
	$(".posting form").on('ajax:error', onError)

})