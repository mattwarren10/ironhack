$(document).ready(function(){
	$(".js-search-button").on("click", searchTracks)
	$(".btn-play").on("click", playTrack)
	$('audio').on('timeupdate', printTime);
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
	// console.log("getTracks:")
	// console.log(response)
	var trackName = response.tracks.items[0].name
	var trackId = response.tracks.items[0].id
	var previewUrl = response.tracks.items[0].preview_url
	var trackArtist = response.tracks.items[0].artists[0].name
	var albumImg = response.tracks.items[0].album.images[0].url
	$(".title").html(trackName);
	$(".author").html(trackArtist);
	$(".js-img").attr("src", albumImg);
	$(".js-audio").attr("src", previewUrl);
	$(".btn-play").removeClass("disabled").addClass("enabled")
}

function playTrack() {
	$("audio").trigger('play');
	$(".btn-play").addClass("playing")
	$(".btn-play").on("click", pauseTrack);

}

function pauseTrack () {
	$("audio").trigger('pause');
	$(".btn-play").removeClass("playing");
	$(".btn-play").on("click", playTrack);
}

function printTime () {
	$('progress').val(0);
    var current = $('audio').prop('currentTime');
    $('progress').val(current);
}

// Have printTime be called when the time is updated



function handleError (error) {
	console.log("Error");
	console.log(error.responseText)
}