$('document').ready(function(){
  $('#mainTagFilter ul li').on('click', function() {
    var $listingHolder = $(".listing_holder")
    var route = $(event.target).closest('li').data('id');

    $.ajax({
            url: route,
            method: 'get'
          }).done(function(styles) {
              $listingHolder.empty();
              if (styles.length > 0) {
                styles.forEach(function(style) {
                  var $listing = $('<div>', {class: "listing"})
                  $listing.data('id', style.id);
                  var $imageDiv = $('<div>', {class: "image"})
                  var $anchorDiv = ($('<a>', {href: '/styles/' + style.id}))
                      .append($('<img>', {src: style.hairpicfront}))
                  $anchorDiv.appendTo($imageDiv);
                  var $centeredContentDiv = $('<div>').addClass('centered content')

                  if (style.likes.length == 1) {
                    var $likeSpan = $('<span>', {class: "like-count",text: style.likes.length + ' Like'})
                  }
                  else {
                    var $likeSpan = $('<span>', {class: "like-count",text: style.likes.length + ' Likes'})
                  }

                  var $footerSpan = $('<span>', {class: "star right js-like",html: '&hearts;'})

                  $footerSpan.on('click', heartClicked);

                  $likeSpan.appendTo($centeredContentDiv);
                  $footerSpan.appendTo($centeredContentDiv);
                  $imageDiv.appendTo($listing);
                  $centeredContentDiv.appendTo($listing);
                  $listing.appendTo($listingHolder);

                });
                }
                else {
                  $h1Div = $('<div>', {style: 'margin: 0 auto; text-align: center; padding: 160px 0 160px 0'});
                  $h1 = $('<h1>', {text : 'No Styles Found'});

                  $h1.appendTo($h1Div);
                  $h1Div.appendTo($listingHolder);
                }
              });

              $(document.body).animate({'scrollTop':   $('#tagScroll').offset().top}, 500);

              })


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
  $('#tags-input').val(value);
  })

$('.js-like').on('click', heartClicked)


function heartClicked() {
  var $styleDiv =  $(event.target).closest('.listing');
  var styleId = $styleDiv.data('id');
  var $likeCountSpan = $styleDiv.find('.like-count');

  $.ajax({
    url: '/likes',
    data: { style_id: styleId },
    method: 'post'
  }).done(function(response) {

    if (response.like_count == 1) {
      $likeCountSpan.html(response.like_count + ' Like');
    }
    else {
      $likeCountSpan.html(response.like_count + ' Likes');
    }
  })
};

var nsOptions = {
    thumbWidth: "50%",//As the thumbHeight is set to "auto", this 50% is the percentage
    //of the gallery viewport width.
    thumbHeight: "auto",
    showMode: 3 //Then the active thumbnail always stays in the center of the gallery
}

  });
