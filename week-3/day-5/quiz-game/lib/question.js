// lib/question.js
"use strict";

class Question {
	constructor (text, answer, pointValue) {
	this.text = text
	this.answer = answer
	this.id = 0
	this.pointValue = pointValue
	} //end
}

module.exports = Question;