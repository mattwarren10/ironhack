function countColors (color, colorArray) {
	var count = 0;
	for (i=0; i < colorArray.length; i++) {
		if (colorArray[i] === color) {
			count++
		}
		else {
			false
		}
	}
	return count
}

module.exports = countColors;