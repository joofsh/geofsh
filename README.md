# Geofsh

Simple way to implement HTML geolocation into your rails app

## Installation

Add this line to your application's Gemfile:

    gem 'geofsh'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geofsh

## Usage

This gem allows you to easily add latitude and longitude to form fields. To any form input fields, simply add the element id "latitude" and "longitude" and those fields will automatically be filled with geolocation data. If you would like fields to be hidden when geolocation fails, simply add the element class "geoloc-hide" to the input field.

To include geofsh geolocation for a specific page, include the geofsh javascript file:

    = javascript_include_tag 'geofsh'

An example of using Geofsh with simple_form:

    = f.input :geolat, label: "Latitude", input_html: { id: "latitude", class: "geoloc-hide" }
    = f.input :geolng, label: "Longitude", input_html: { id: "longitude", class: "geoloc-hide" }

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
