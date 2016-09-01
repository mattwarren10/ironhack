//lib/animal.js

function Animal(name, noise) {
	this.name = name
	this.noise = noise

} //end

Animal.prototype.makeNoise = function () {
	console.log(this.name + " says: " + this.noise);
}

Animal.prototype.shout = function () {
		console.log(this.name.toUpperCase());
}

module.exports = Animal;