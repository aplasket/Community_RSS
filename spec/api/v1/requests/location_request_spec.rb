require 'rails_helper'

RSpec.describe 'Location Request API' do
  describe 'Location Request/Response path' do
    it 'can get a location' do
      # params = { zip: 80226 }
      post "/graphql"
      require 'pry'; binding.pry
    end
  end
end