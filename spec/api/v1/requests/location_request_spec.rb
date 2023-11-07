require 'rails_helper'

RSpec.describe 'Location Request API' do
  describe 'Location Request/Response path' do
    it 'can get a location' do
      post graphql_path, params: { query: "80226" }
      require 'pry'; binding.pry
    end
  end
end