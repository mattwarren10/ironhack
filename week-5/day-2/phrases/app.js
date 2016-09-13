 var phrases = ["I am Ironman.", 
 "I am the 50th president of the United States of American.", 
 "I don't like cats."
 ];

$(".random-phrase").on("click", function() {
	$(".phrases").html( phrases[Math.floor(parseInt(phrases.length) * Math.random())] );	
})
 