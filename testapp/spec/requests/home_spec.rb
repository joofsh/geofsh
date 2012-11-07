require 'spec_helper'
@javascript

describe 'Home Requests' do
  before :each do
    visit '/'
  end


  it 'loads geofsh lat/lng data into fields', js: true do
    find_field('latitude').value.should_not be_blank
    find_field('longitude').value.should_not be_blank
  end

  it 'loads a google map', js: true do
    page.should have_selector "div#google-map"
    page.should have_selector "div", text: "Satellite"
    page.should have_selector "img", src: "https://maps.gstatic.com/mapfiles/google_white.png"
  end

end

