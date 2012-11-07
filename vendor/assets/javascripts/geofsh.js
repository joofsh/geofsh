(function(){
  var geolocError, addMarker, getPosition, hideAddressAndZip, hideGeoLoc, geolocSuccess, googleMap, mapOptions, map, marker, geolat, geolng, geoCoords;

  googleMap = function(geolat, geolng) {
    if(document.getElementById("google-map")){
      geoCoords = new google.maps.LatLng(geolat, geolng);
      mapOptions = {
        zoom: 16,
        center: geoCoords,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };

      map = new google.maps.Map(document.getElementById("google-map"), mapOptions);
      addMarker(geoCoords, "You are here!");
    }
  };

  addMarker = function(position, title) {
    marker = new google.maps.Marker({
      position: position,
      map: map,
      title: title
      });
  }
  geolocSuccess = function(position) {
    geolat = position.coords.latitude;
    geolng = position.coords.longitude;
    $('input#latitude').val(geolat);
    $('input#longitude').val(geolng);
    return googleMap(geolat, geolng);
  };

  geolocError = function() {
  hideGeoLoc();
  return "Geolocation Unsuccessful";
  };


  hideGeoLoc = function() {
  return $('.geoloc-hide').parent().hide();
  };

  getPosition = function() {
    if (navigator.geolocation) {
      return navigator.geolocation.getCurrentPosition(geolocSuccess, geolocError);
    } else {
      hideGeoLoc();
      return "Geolocation not supported";
    }
  };


  $(function() {
    return getPosition();
  })
}).call(this);

