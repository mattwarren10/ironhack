//lib/animal.js
"use strict";

class Animal {
	constructor (name, noise) {
	this.name = name
	this.noise = noise
	} //end

	makeNoise () {
		console.log(this.name + " says: " + this.noise);
	}

	shout () {
			console.log(this.name.toUpperCase());
	}
}

module.exports = Animal;