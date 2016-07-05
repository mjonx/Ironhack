var fs = require('fs');
function fileActions(err, file){
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    var episodesDescription = formatter(episodes)
    // console.log(episodes)
}
function formatter(episodes) {
  var episodesArray = []
  episodes.forEach(function(episode) {
    var sentence = "Title: " + episode.title + " Episode : " + episode.episode_number.toString() + "\r\n" + episode.description + "\r\n" + "Rating: " + episode.rating.toString();
    console.log(sentence);
  })
  return episodesArray
}
fs.readFile('./GameOfThrones.json', 'utf8', fileActions);
