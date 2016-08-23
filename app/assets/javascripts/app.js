

// $('.listing').on('click', '.star', function(event) {
//   // console.log( $(event.target).closest('.ui-card').find('h2').text() );
//   console.log(event.target);
//   //this - will always be the .star
//   console.log(this);
//   // $(event.target).closest('.image').find('.word').html('liked');
// });

$('document').ready(function(){

  $('.js-like').on('click', function() {
    console.log('liking a style');
    // debugger

    var $styleDiv =  $(event.target).closest('.ui-style');
    var styleId = $styleDiv.data('id');
    var $likeCountSpan = $styleDiv.find('.like-count');

    $.ajax({
      url: '/likes',
      data: { style_id: styleId, user_id: 42 },
      method: 'post'
    }).done(function(response) {
      console.log(response);
      $likeCountSpan.html(response.like_count + ' Likes');
    })

  })

  });
