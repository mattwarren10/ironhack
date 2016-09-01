var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    console.log(`Title: ${episodes[0].title} Episode #: ${episodes[0].episode_number}`);
    console.log(`${episodes[0].description}`);
    console.log(`Rating: ${episodes[0].rating}`);

}
fs.readFile("./data/data.json", 'utf8', fileActions);