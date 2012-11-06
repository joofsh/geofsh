require 'spec_helper'
@javascript

describe 'Home Requests' do
  it 'loads geofsh lat/lng data into fields', js: true do
    visit '/'
    find_field('latitude').value.should_not be nil
    find_field('longitude').value.should_not be nil
  end
end

