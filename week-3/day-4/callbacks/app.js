//app.js
"use strict";

var fs = require("fs")

function handler (theError, movieFileContents) {
	if (theError === null) {
		var moviesArray = movieFileContents.split("\n");
		console.log(moviesArray);
	}

	else {
		console.log("Oh no! Error.")
		console.log(theError);
	}
	
}

fs.readFile("movies.txt", "utf8", handler);


var read = require("read")

var theOptions = { prompt: "What is your name?"}

function greetUser(theError, givenName) {
	console.log(`Hello, ${givenName}.`);
	var options2 = { prompt: "What is your birthday?"}
	
	function displayBirthday (theError, birthDate) {
	console.log(`Your were born: ${birthDate}.`)
	}
	read(options2, displayBirthday);	
}

read(theOptions, greetUser);






//==============================
function after5Seconds () {
	console.log("5 seconds");
}

setTimeout(after5Seconds, 5000);

function after1Second () {
	console.log("1 second");
}

setTimeout(after1Second, 1000)

console.log("")
console.log("END OF PROGRAM")
console.log("")