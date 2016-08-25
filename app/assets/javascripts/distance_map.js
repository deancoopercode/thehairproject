function disMap() {
  var directionsDisplay = new google.maps.DirectionsRenderer;
  var directionsService = new google.maps.DirectionsService;
  var mapDis = new google.maps.Map(document.getElementById('mapDis'), {
    zoom: 14,
    center: {lat: -37.8136, lng: 144.9631}
  });
  directionsDisplay.setMap(mapDis);

  calculateAndDisplayRoute(directionsService, directionsDisplay);
  document.getElementById('mode').addEventListener('change', function() {
    calculateAndDisplayRoute(directionsService, directionsDisplay);
  });
}

function calculateAndDisplayRoute(directionsService, directionsDisplay) {
  var selectedMode = document.getElementById('mode').value;
  console.log($('#map-lat').text())
  directionsService.route({
    origin: {lat: -37.8185716, lng: 144.9546346},  // melbourne center HARDCODED

    // destination: {lat: -37.8156, lng: 144.9431},  // Hair salon HARDCODED
    destination: {lat: parseFloat($('#map-lat').text(), 10), lng: parseFloat($('#map-lng').text(), 10)},  // Hair salon.
    // Note that Javascript allows us to access the constant
    // using square brackets and a string value as its
    // "property."
    travelMode: google.maps.TravelMode[selectedMode]
  }, function(response, status) {
    if (status == 'OK') {
      directionsDisplay.setDirections(response);
    } else {
      window.alert('Directions request failed due to ' + status);
    }
  });
}


// $('#map-lat').text(<%= %style.lat>);
// $('#map-lng').text(lngCoordinate);
