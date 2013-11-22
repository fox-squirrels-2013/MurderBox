$(function(){

	function onSuccessPost(e, response){
		$("ul").prepend(response);
	}

	function onErrorPost(e, xhr) {
		debugger
	}

  function onSuccessComment(e, response){
    console.log(response)
    $("ul").append(response);
  }

  function onErrorComment(e, xhr) {
    debugger
  }
	$(".posting form").on('ajax:success', onSuccessPost)
	$(".posting form").on('ajax:error', onErrorPost)
  $(".commenting form").on('ajax:success', onSuccessComment)
  $(".commenting form").on('ajax:error', onErrorComment)


})