function countColors (color, colorArray) {
	var count = 0;
	colorArray.forEach(function(theColor){
		if (theColor === color) {
			count += 1
		}
	})
	return count
}

module.exports = countColors;