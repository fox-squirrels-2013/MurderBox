$(function(){

	function onSuccess(e, response){
		$("ul").prepend(response);
	}

	function onError(e, xhr) {
		debugger
	}

  function onSuccess(e, response){
    console.log(response)
    $("ul").append(response);
  }

  function onError(e, xhr) {
    debugger
  }
	$(".posting form").on('ajax:success', onSuccess)
	$(".posting form").on('ajax:error', onError)
  $(".commenting form").on('ajax:success', onSuccess)
  $(".commenting form").on('ajax:error', onError)


})