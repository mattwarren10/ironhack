// lib/quiz.js
"use strict";

class Quiz {
	constructor () {
	this.questions = new Array;
	this.score = 0;
	} //end

	addQuestions (q) {
		this.questions.push(q);
	}
}

module.exports = Quiz;