$(document).on("turbolinks:load", function () {
  // alert("We are using JavaScript now!");
  $('.js-ingredient').on('click', addIngredient);

});

 function addIngredient (e) {
  	e.preventDefault();
 //  	console.log(e.currentTarget)
	// console.log($(e.currentTarget).data("ingredient-id"))
	var ingredientId = $(e.currentTarget).data('ingredient-id')
	var sandwichId = $('.js-sandwich').data('sandwich-id')
	var ingredient = $(e.currentTarget).text()
  	$.ajax({
		type: "POST",
		url: `/api/sandwiches/${sandwichId}/ingredients/add`, 
		data: { ingredient_id: ingredientId},
		success: showIngredient,
		error: handleError
	})
 }

 function showIngredient (response) {
 	$('.js-append').empty()
	response.ingredients.forEach(function(ingredient){
		$('.js-append').append(`<li>${ingredient.name}</li>`);
 	})
 	
 // 	var sandwichId = $('.js-sandwich').data('sandwich-id')
 // 	$.ajax({
	// 	type: "GET",
	// 	url: `/api/sandwiches/${sandwichId}`, 
	// 	success: buildUl,
	// 	error: handleError
	// })
}

// function buildUl (response) {
// 	console.log(response)
// 	var ingredients = response.ingredients.forEach(function (ingredient) {
// 		$('.js-append').append(ingredient)
// 	})
// }



 function handleError (error) {
	console.log("Error");
	console.log(error.responseText)
}