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

	attack (anotherViking) {
		if (this.strength !== 0) {
			this.strength--	
		}
		
		anotherViking.health--
	}

}

module.exports = Viking;