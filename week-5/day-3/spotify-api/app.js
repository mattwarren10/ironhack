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
	var id = currentT.data("id");
	console.log(id)
	$.ajax({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${id}/albums`,
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
			<a class="artist-li" data-id="${theArtist.id}" href="#">${theArtist.name} albums</a>
		`;
		theArtist.images.forEach(function (image) {
			html +=	`<img src="${image.url}">`
		})
		$(".js-place-artist").append(html);
	})
	$(".artist-li").on("click", searchAlbums)
}

function showAlbum(response) {
	console.log("Good to go.")
	console.log(response)
	
	var results = response;
	$('.js-place-album').empty();
	results.items.forEach(function (albumName){
		var html = `<li>${albumName.name}</li>`;
			
		$('.js-place-album').append(html);
		console.log(albumName.name);
	})
	$('#myModal').modal('show');
}

function handleError (error) {
	console.log("Error");
	console.log(error.responseText)
}


//album link:
// https://api.spotify.com/v1/artists/${theArtist.id}/albums