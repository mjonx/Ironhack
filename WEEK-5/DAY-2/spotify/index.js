$('form').on('submit', function (e) {
  e.preventDefault();
  var artistsearch = $('#searchbox').val();
  console.log(artistsearch)
  $.ajax({
    type: 'GET',
    url: 'https://api.spotify.com/v1/search?type=artist&query=' + artistsearch,
    success: handleResponse,
    error: function (err) {
      console.log('error...');
    },
    dataType: 'json'
  });
});


function handleResponse (data) {
    var listOfArtists = data.artists.items
    listOfArtists.forEach( function (artists){
      var artistName = $('<h5>').text(artists.name);
      var artistImage = $('<img>').attr('src', artists.images[0].url);
      var listItem = $('<li>').append(artistName);
      listItem.append(artistImage);
      $('#listsOfArtist').append(listItem);
    })
  }
