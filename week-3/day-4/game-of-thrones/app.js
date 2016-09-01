var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
	var sortedEpisodes = episodes.sort(function(a, b){
		return a.episode_number - b.episode_number;
	});
	var filteredEpisodes = sortedEpisodes.filter(removeShittyEpisodes);
	print(episodes);
}

function ratingToStar (rating) {
	return  "*".repeat(parseInt(rating));
}
fs.readFile("./data/data.json", 'utf8', fileActions);

function removeShittyEpisodes (episode) {
	return episode.rating > 8.5;
}

function searchFor(episode, string) {
	if (episode.indexOf(string) === -1 ) {
		return false;
	} else {
		return true;
	}
	
}

function print (episodes) {
    for (var i=0; i < episodes.length; i++ ) {
    	console.log(`Title: ${episodes[i].title} Episode #: ${episodes[i].episode_number}`);
    	console.log(`${episodes[i].description}`);
    	console.log(`Rating: ${episodes[i].rating} ${ratingToStar(episodes[i].rating)}`);
    	console.log(`Contains Jon Snow: ${searchFor(episodes[i].description, 'Jon')}`);	
    	console.log("");
    }
}