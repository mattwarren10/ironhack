 var phrases = ["I am Ironman.", 
 "I am the 50th president of the United States of American.", 
 "I don't like cats."
 ];

 var input = $("#name");

$(".random-phrase").on("click", function() {
	$(".phrases").html( phrases[Math.floor(parseInt(phrases.length) * Math.random())] );	
})
 
function addPhrase () {
	phrases.push($("input").val());
}

for(var i = 0; i < phrases.length; i++) {
		$(".show-hide-phrases").append(phrases[i] + " ");
}

$("a").on("click", function(){
	$(".show-hide-phrases").toggle();
	$("a").html($('a').text() == 'Hide all comments.' ? 'Show all comments.' : 'Hide all comments.');
})


// input.on("change", addPhrase);
input.keypress(function(e) {
    if(e.which == 13) {
        addPhrase();
    }
});