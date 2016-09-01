//lib/viking.js
"use strict";

class Pit {
	constructor(vikings) {
		this.vikings = [];
	}

	addViking (v) {
		this.vikings.push(v)
	}
}

module.exports = Pit;