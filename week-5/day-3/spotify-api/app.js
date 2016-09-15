$(document).ready(function (){
	$(".js-search-spotify-artists").on("click", searchArtists)
	

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
	var currentT = $(e.currentTarget)
	console.log(e.currentTarget)
	var id = currentT.data("artist-id");
	console.log(id)
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${id}/albums`,
		success: showAlbum,
		error: handleError

	})
}

function searchTracks(e) {
	e.preventDefault();
	var currentT = $(e.currentTarget)
	console.log(e.currentTarget)
	var id = currentT.data("album-id");
	console.log(id)
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/albums/${id}/tracks`,
		success: showTracks,
		error: handleError
	})
}

function showArtist(response) {
	console.log("showArtist:");
	// console.log(response)
	var spotifyResults = response;
	$('.js-place-artist').empty();
	spotifyResults.artists.items.forEach(function(theArtist){
		var html = `
			<li><a class="artist-a" data-artist-id="${theArtist.id}" href="#">${theArtist.name}</a></li>
		`;
		theArtist.images.forEach(function (image) {
			html +=	`<img src="${image.url}">`
		})
		$(".js-place-artist").append(html);
	})
	$(".artist-a").on("click", searchAlbums)
}

function showAlbum(response) {
	console.log("showAlbum:")
	// console.log(response)
	var results = response;
	$('.js-place-album').empty();
	results.items.forEach(function (album){
		var html = `<li><a class="album-a" data-album-id="${album.id}" href="#">${album.name}</a></li>`;
			
		$('.js-place-album').append(html);
	})
	$('#myModal').modal('show');
	$(".album-a").on("click", searchTracks)
}

function showTracks (response) {
	console.log("showTracks:")
	console.log(response)
	$('.js-place-album').empty();
	var results = response;
	response.items.forEach(function(track){
		var html = `<li><a class="track-a" data-track-id="${track.id}" href="${track.preview_url}" target=”_blank”>${track.name}</a></li>`;
		$('.js-place-tracks').append(html);
	})
	$('#myModal').modal('show');

}

function handleError (error) {
	console.log("Error");
	console.log(error.responseText)
}


//album link:
// https://api.spotify.com/v1/artists/${theArtist.id}/albums