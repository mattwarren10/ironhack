var countColors = require("./lib/count-colors.js");

var colorArray = ["indigo", "teal", "lilac", "black", "periwinkle", "baby blue", "periwinkle", "teal"];


console.log( colorArray );
console.log( countColors("indigo", colorArray) === 1 );
console.log( countColors("periwinkle", colorArray) === 2 );
console.log( countColors("teal", colorArray) === 2 );
console.log( countColors("green", colorArray) === 0 );
console.log( countColors("navy blue", colorArray) === 0 );