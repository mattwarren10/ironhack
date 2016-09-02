//lib/viking.js
"use strict";

class Saxon {
	constructor(health, strength) {
		this.health = health
		this.strength = strength
	} //end

	dead () {
		if (this.health === 0) {
			console.log("This Saxon is dead.")
		}
	}

}

module.exports = Saxon;