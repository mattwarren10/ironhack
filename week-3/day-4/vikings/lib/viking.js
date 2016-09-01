//lib/viking.js
"use strict";

class Viking {
	constructor(name, health, strength) {
		this.name = name
		this.health = health
		this.strength = strength
	} //end

	epicWarcry () {
		console.log("Arrrrrrrgggggghhhhh!!!!!")
	}
}

module.exports = Viking;