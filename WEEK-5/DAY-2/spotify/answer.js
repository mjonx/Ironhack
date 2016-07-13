
function handleResponse (data) {
    var listOfArtists = data.artists.items
    listOfArtists.forEach(function(artist) {
        var h5 = $('<h5>').text(artist.name)
        var img = $('<img>').attr('src', artist.images[2].url)
        var li = $('<li>').append(h5)
        li.append(img)
        $('#listsOfArtist').append(li)
        // console.log('artist name:', artist.name)
    })
}
