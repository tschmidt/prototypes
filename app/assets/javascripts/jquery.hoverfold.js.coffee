$.fn.hoverfold = (args) ->
  this.each ->
    $(this).children('.view').each ->
      $item = $(this)
      img = $item.children('img').attr('src')
    
      struct = '<div class="slice slice-1"><div class="slice slice-2"><div class="slice slice-3"><div class="slice slice-4"><div class="slice slice-5"></div></div></div></div></div>'
    
      $struct = $(struct)
    
      $item
        .append($struct)
        .find('img')
          .remove()
        .end()
        .find('.slice')
          .css('background-image', 'url(' + img + ')')
          .prepend($('<span class="overlay"/>'))