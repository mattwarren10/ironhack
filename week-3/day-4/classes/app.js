// app.js
"use strict";

var Animal = require("./lib/animal.js");

var dymitri = new Animal("Dymitri", "Huff...");
dymitri.makeNoise();
dymitri.shout();

var chewie = new Animal("Chewie", "Woof")
chewie.makeNoise();
chewie.shout();


// var dymitri = {
// 	name: "Dymitri",
// 	noise: "Huff...",
// 	makeNoise: function () {
// 		console.log(this.name + " says: " + this.noise);
// 	},
// 	shout: function () {
// 		console.log(this.name.toUpperCase());
// 	}
// };

// dymitri.makeNoise();
// dymitri.shout();

// var chewie = {
// 	name: "Chewie",
// 	noise: "Woof",
// 	makeNoise: function () {
// 		console.log(this.name + " says: " + this.noise);
// 	},
// 	shout: function () {
// 		console.log(this.name.toUpperCase());
// 	}
// };

// chewie.makeNoise();
// chewie.shout();