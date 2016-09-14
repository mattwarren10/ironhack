$(document).ready(function (){
	$(".js-search-spotify").on("click", searchAPI)

});

function searchAPI (e) {
	e.preventDefault();
	var value = $(".input-search-spotify").val();
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${value}`,
		success: showArtist,
		error: handleError
	})
}

function showArtist(response) {
	console.log("Success!");
	console.log(response)
	var spotifyResults = response;
	spotifyResults.artists.items.forEach(function(theArtist){
		var html = `
			<li>${theArtist.name}</li>
		`;
		$(".js-place-artist").append(html);
	})

}

function handleError (error) {
	console.log("Error");
	console.log(error.responseText)
}