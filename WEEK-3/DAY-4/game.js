var fs = require('fs');
function fileActions(err, file){
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    episodes = sort(episodes);
    // console.log(episodes)
    episodes = episodes.filter(function(episode){
      return episode.rating > 8.5
    })
    formatter(episodes);
}

var formatter = function (episodes) {


  episodes.forEach(function(episode) {
    var sentence = "Title: " + episode.title + "Episode : " + episode.episode_number.toString() + "\r\n" + episode.description + "\r\n" + "Rating: " + episode.rating.toString();
    console.log(sentence);
  })
}

function sort(episodes){
  episodes.sort(function(a, b) {
    return a.episode_number - b.episode_number
  });
  // console.log(episodes);
  // callback(episodes);
  return episodes;
}
fs.readFile('./GoTEpisodes.json', 'utf8', fileActions);
