$(document).ready(function(){
	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-obi-wan").on("click", addObiWan);
	$(".js-add-new-character").on("click", addNewCharacter)

});

function addNewCharacter (theEvent) {
	theEvent.preventDefault();
	var name = $(".js-name").val();
	var occupation = $(".js-occupation").val();
	var weapon = $(".js-weapon").val();
	console.log(`Name: ${name}, Occupation: ${occupation}, Weapon: ${weapon}`)
}

function fetchCharacters () {
	//AJAX code here
	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	});
};


function showCharacters (response) {
	console.log("Success!");
	var charactersArray = response;

	charactersArray.forEach(function (theCharacter){
		var html = `
		<li>
			<h2> ${theCharacter.name} </h2>
		</li>
		`;
		$(".js-characters-list").append(html)
	});
}

function handleError (error) {
	console.log("Error!")
	console.log(error.statusText);
}

function addObiWan () {
	var newCharacter = {
		name: "Obi Wan Kenobi",
		occupation: "Jedi Knight",
		weapon: "Light Sabor"
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: updateList,
		error: handleError
	})
}

function updateList (response) {
	console.log("Create Obi Wan Success");
	console.log(response);
}