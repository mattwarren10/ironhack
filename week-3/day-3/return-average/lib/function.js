//function receives a string of numbers separated by colons

function changeToArray(str) {
	var arr = []
	var numbers = []
	var added_numbers = 0
	var average = 0

	if (str === undefined) {
		return 0
	}
	var arr = str.match(/\d+/g)
	var numbers = arr.map(function (num) {
		return parseInt(num);
	})
	numbers.forEach(function(the_number){
		added_numbers += the_number
	})
	average = added_numbers / numbers.length

	// console.log( average )
	return average
}



module.exports = changeToArray;