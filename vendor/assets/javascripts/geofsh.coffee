googleMap = (geolat, geolng) ->
  geoCoords = new google.maps.LatLng(geolat, geolng)
  mapOptions =
    zoom: 16
    center: geoCoords
    mapTypeId: google.maps.MapTypeId.ROADMAP

  map = new google.maps.Map(document.getElementById("google-map"), mapOptions)
  addMarker geoCoords, map, "You are here!"

addMarker = (position, map, title) ->
  marker = new google.maps.Marker(
    position: position
    map: map
    title: title
  )

geolocSuccess = (position) ->
  geolat = position.coords.latitude
  geolng = position.coords.longitude
  $("input#latitude").val geolat if $("input#latitude")
  $("input#longitude").val geolng if $("input#longitude")
  googleMap geolat, geolng if $("#google-map")

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
