
$('document').ready(function(){

  $('#newStyleUl li').on('click', function() {

    //remove all selected classes.
    $('#newStyleUl li').removeClass().addClass("tags");

    if ($(event.target).closest('li').hasClass( "liSelected" )){
      $(event.target).closest('li').removeClass().addClass("tags");
    }

    else {
      $(event.target).closest('li').removeClass().addClass("liSelected tags");
    }





    var value = $(event.target).closest('li').data('id');
    console.log($(event.target).closest('li').data('id'));
    $('#tags-input').val(value);
  })

  $('.js-like').on('click', function() {

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
