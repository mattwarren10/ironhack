function caesarCipher (message, shift) {
	var splitMessage = [];

	//if shift is not used
	if (shift === undefined) {
		shift = -3
	}
	//split the message into an array of characters
  	splitMessage = message.split("");
  	var shiftedCharArr = []
  	splitMessage.forEach(function(c){
  		var characterCode;
  		characterCode = c.charCodeAt(0);
  		

  		//check if each character is a letter
  		if (c.match(/[a-zA-Z]/i)) {
  			//get the character code
  			shiftedCharArr.push(characterCode + shift);

  		}
  		//if its not, then leave it as is
  		else {
  			shiftedCharArr.push(characterCode);
  		}
  	});
  	var cipheredWord = "";
  	//change the character codes back to letters
  	shiftedCharArr.forEach(function(n){
  		cipheredWord += String.fromCharCode(n)
  	});
  	return cipheredWord 
}



var encrypted = caesarCipher("Et tu, brute?");

console.log(encrypted);
//=> "_orqrp"