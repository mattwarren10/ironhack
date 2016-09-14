$(document).ready(function (){
	$(".js-search-spotify-artists").on("click", searchArtists)
	$("ul").on("click", "a", searchAlbums)


});

function searchArtists (e) {
	e.preventDefault();
	var value = $(".input-search-spotify").val();
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&query=${value}`,
		success: showArtist,
		error: handleError
	})
}

function searchAlbums(e) {
	e.preventDefault();
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/4gzpq5DPGxSnKTe4SA8HAU/albums`,
		success: showAlbum,
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
			<a href="#">${theArtist.name} albums</a>
		`;
		theArtist.images.forEach(function (image) {
			html +=	`<img src="${image.url}">`
		})
		$(".js-place-artist").append(html);
	})
}

function showAlbum(response) {
	console.log("Good to go.")
	console.log(response)
	$('#myModal').modal('show')
}

function handleError (error) {
	console.log("Error");
	console.log(error.responseText)
}


//album link:
// https://api.spotify.com/v1/artists/${theArtist.id}/albums