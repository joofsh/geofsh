geolocSuccess = (position) ->
  geolat = position.coords.latitude
  geolng = position.coords.longitude
  $("input#latitude").val geolat
  $("input#longitude").val geolng

geolocError = ->
  hideGeoLoc()
  "Geolocation Unsuccessful"

hideGeoLoc = ->
  $(".geoloc-hide").parent().hide()

getPosition = ->
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition geolocSuccess, geolocError
  else
    hideGeoLoc()
    "Geolocation not supported"

$ ->
  getPosition()
