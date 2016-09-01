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
    for (var i=0; i < filteredEpisodes.length; i++ ) {
    	console.log(`Title: ${filteredEpisodes[i].title} Episode #: ${filteredEpisodes[i].episode_number}`);
    	console.log(`${filteredEpisodes[i].description}`);
    	console.log(`Rating: ${filteredEpisodes[i].rating} ${ratingToStar(filteredEpisodes[i].rating)}`);	
    }
    
}

function ratingToStar (rating) {
	return  "*".repeat(parseInt(rating));
}
fs.readFile("./data/data.json", 'utf8', fileActions);

function removeShittyEpisodes (episode) {
	return episode.rating > 8.5;
}