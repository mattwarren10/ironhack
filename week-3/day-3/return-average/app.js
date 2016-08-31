var changeToArray = require("./lib/function.js")

console.log( changeToArray() === 0 );
console.log( changeToArray('80:70:90:100') === 85 );
console.log( changeToArray('80&70&90&100') === 85 );
console.log( changeToArray('80:70&90:100') === 85 );
