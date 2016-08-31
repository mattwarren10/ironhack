//function receives a string of numbers separated by colons

function changeToArray(str) {
	var arr = []
	var numbers = []
	var arr = str.match(/\d+/g)
	var numbers = arr.map(function (num) {
		return parseInt(num);
	})
	console.log(numbers)
}



module.exports = changeToArray;