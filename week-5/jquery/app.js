$(document).ready(function() {
		//page has finished loading.
	// $('.hello-button').on('click', function () {
	//         alert('hello world')
	//     });

	// $('.js-tacos').on('click', function () {
	// 		alert('eat tacos')
	// 	});

	// var price = '<p>Only $399.99</p>'
	// $('.container').append(price);

	// $('body').append("<h1>Empanadas </h1>");

	// $('.container').prepend('<p>Prepend me.</p>');
	// $('.container').before('<p>Before me.</p>');
	// $('.container').after('<p>After me.</p>');

	// $('#cookies').remove();
	// $('#exercise').empty();

	$('.btn-success').on("click", function () {
		$('.container').toggle()	
	});

	$('.fader').on("click", function() {
		if ( $('.container').length > 0 ) {
			$('.container').fadeOut();
		}
		
		else { 
			$('.container').fadeIn();
		}

	});

	$('.unicorn').on("click", function() {
		$('.hello-button').toggleClass('unicorn-mode');
	});
})
