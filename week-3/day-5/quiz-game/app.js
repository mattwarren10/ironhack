//app.js

"use strict";
var read = require('read');
var Question = require("./lib/question.js");
var Quiz = require("./lib/quiz.js");

//Make an instance of the quiz class
var quiz = new Quiz();

//Questions
var kobe = new Question("What NBA organization drafted Kobe Bryant in 1996?", "Charlotte Hornets", 5);
var phil = new Question("Phil Jackson is the current General Manager for which NBA team?", "New York Knicks", 5);
var games = new Question("How many games does an NBA team play during the regular season?", 82, 5);
var steve = new Question("Which NBA player earned two MVPs during the 2000s?", "Steve Nash", 5);

//Add all questions to quiz class
quiz.addQuestions(kobe)
quiz.addQuestions(phil)
quiz.addQuestions(games)
quiz.addQuestions(steve)
// console.log(quiz.questions[0])
// Our options object, the prompt is simply what will appear in the command line when read is called

for (var i=0; i < quiz.questions.length; i++) {
	var options = {
    	prompt: quiz.questions[0].text
	}
}
	

function calculateAnswer (err, answer){
	if (answer === quiz.questions[0].answer) {
		quiz.score += quiz.questions[0].pointValue
	}
    console.log("Your score is: " + quiz.score)
}

// The prompt itself, passing options, and using our callback function after input
read(options, calculateAnswer)

// Outputs whatever the user has entered back to the console