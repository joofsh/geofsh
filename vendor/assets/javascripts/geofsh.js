  var geolocError, getPosition, hideAddressAndZip, hideGeoLoc, geolocSuccess;

  geolocSuccess = function(position) {
      $('input#latitude').val(position.coords.latitude);
      return $('input#longitude').val(position.coords.longitude);
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
});

