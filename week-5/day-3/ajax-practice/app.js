$(document).ready(function(){
	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-obi-wan").on("click", addObiWan);
	$(".js-add-new-character").on("click", addNewCharacter)

});

//Get the characters with an ajax request
function fetchCharacters () {
	//AJAX code here
	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		success: showCharacters,
		error: handleError
	});
};

//create obi wan character and send data
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
	});
};


//List the characters data in the console
function addNewCharacter (theEvent) {
	theEvent.preventDefault();
	var name = $(".js-name").val();
	var occupation = $(".js-occupation").val();
	var weapon = $(".js-weapon").val();
	console.log(`Name: ${name}, Occupation: ${occupation}, Weapon: ${weapon}`)
}

//List characteristics of each character in a list item
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

//ajax callback function on success
function updateList (response) {
	console.log("Create Obi Wan Success");
	console.log(response);
}

//ajax callback function on failure
function handleError (error) {
	console.log("Error!")
	console.log(error.statusText);
}