require 'rails_helper'

RSpec.describe 'Location Request API' do
  describe 'mutation request' do
    it 'get successful response' do
      query = <<-GQL
        mutation {
          zip_code(
            zip_code: "80226"
          )
        }
      GQL

      result = CommunityRssSchema.execute(query)
      expect(result.status).to be successful
      expect(result.status).to eq 200
    end

    xit 'returns data for zip code in query' do

    end
  end
end