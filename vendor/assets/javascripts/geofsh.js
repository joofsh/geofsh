(function() {
  var errorCallback, getPosition, hideAddressAndZip, hideGeoLoc, successCallback;

  successCallback = function(position) {
      $('input#latitude').val(position.coords.latitude);
      return $('input#longitude').val(position.coords.longitude);
  };

  errorCallback = function() {
    hideGeoLoc();
    return "Geolocation Unsuccessful";
  };


  hideGeoLoc = function() {
    return $('.geoloc').parent().hide();
  };

  getPosition = function() {
    if (navigator.geolocation) {
    return navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
    } else {
    hideGeoLoc();
    return "Geolocation not supported";
    }
  };

$(function() {
    return getPosition();
});

}).call(this);

