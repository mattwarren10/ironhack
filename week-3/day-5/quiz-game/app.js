//app.js

"use strict";
var read = require('read');
var Question = require("./lib/question.js");

var options = {
    prompt: "What's your name?\n>"
}
// Our options object, the prompt is simply what will appear in the command line when read is called
function displayName (err, name){
    console.log("Your name is: " + name)
}

// The prompt itself, passing options, and using our callback function after input
read(options, displayName)

// Outputs whatever the user has entered back to the console