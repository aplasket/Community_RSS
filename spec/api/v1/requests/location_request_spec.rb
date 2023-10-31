require 'rails_helper'

RSpec.describe 'Location Request API' do
  describe 'Location Request/Response path' do
    it 'can get a location' do
      params = { zip: 80226 }
      GET "/api/v1/location", params: params
      require 'pry'; binding.pry
    end
  end
end