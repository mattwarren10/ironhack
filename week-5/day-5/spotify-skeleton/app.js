$(document).ready(function(){
	$(".js-search-button").on("click", searchTracks)
})

function searchTracks (e) {
	e.preventDefault()
	var inputValue = $(".track-input").val()
	var finalSearchTerm = inputValue.split(" ").join("+");
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=track&query=${finalSearchTerm}`,
		success: getTracks,
		error: handleError
	})
}

function getTracks (response) {
	console.log("getTracks:")
	console.log(response)
	var trackName = response.tracks.items[0].name
	var trackId = response.tracks.items[0].id
	var previewUrl = response.tracks.items[0].preview_url
	var trackArtist = response.tracks.items[0].artists[0].name
	var trackImg = response.tracks.items[0].album.images[0].url
	$(".title").html(trackName);
	$(".author").html(trackArtist)
}


function handleError (error) {
	console.log("Error");
	console.log(error.responseText)
}