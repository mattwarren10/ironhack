//app.js
"use strict";

var Viking = require("./lib/viking.js");
var Pit = require("./lib/pit.js");

var charlie = new Viking("Charlie", 5, 5);
var hendrick = new Viking("Hendrick", 5, 5);

var pit = new Pit;

pit.addViking(charlie);
pit.addViking(hendrick);

charlie.attack(hendrick);
charlie.attack(hendrick);
charlie.attack(hendrick);
charlie.attack(hendrick);

console.log(charlie);
console.log(hendrick);

