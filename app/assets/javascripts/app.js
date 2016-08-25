

// $('.listing').on('click', '.star', function(event) {
//   // console.log( $(event.target).closest('.ui-card').find('h2').text() );
//   console.log(event.target);
//   //this - will always be the .star
//   console.log(this);
//   // $(event.target).closest('.image').find('.word').html('liked');
// });

$('document').ready(function(){












  
  console.log('doc ready');
  $('.js-like').on('click', function() {
    console.log('liking a style');
    // debugger

    var $styleDiv =  $(event.target).closest('.listing');
    var styleId = $styleDiv.data('id');
    var $likeCountSpan = $styleDiv.find('.like-count');

    $.ajax({
      url: '/likes',
      data: { style_id: styleId },
      method: 'post'
    }).done(function(response) {
      console.log(response);

      if (response.like_count == 1) {
        $likeCountSpan.html(response.like_count + ' Like');
      }
      else {
        $likeCountSpan.html(response.like_count + ' Likes');
      }
    })

  })

  var nsOptions = {
      thumbWidth: "50%",//As the thumbHeight is set to "auto", this 50% is the percentage
      //of the gallery viewport width.
      thumbHeight: "auto",
      showMode: 3 //Then the active thumbnail always stays in the center of the gallery

  }



  });
