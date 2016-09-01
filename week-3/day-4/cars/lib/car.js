// car.js
"use strict";

class Car {
	constructor (model, noise) {
	this.model = model
	this.noise = noise
	this.wheels = 4
	} //end

	makeNoise () {
		console.log(`${this.model}: ${this.noise}`);
	}
}

module.exports = Car;