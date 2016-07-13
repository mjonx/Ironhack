var grid = $('#pixelgrid');

for (i = 0; i < 5; i++) {
  var row = '<div class="row" data-row="'+i+'">';

    for (j = 0; j < 5; j++)
      row += '<div class="square" data-col="'+j+'"></div>';

      row += '</div>'
      grid.append(row);
}


$('.square').click(function(e) {
  $('.square').each(function(){
    $(e.currentTarget).toggleClass('color');
  })
});
