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
      require 'pry'; binding.pry
      expect(result.status).to be successful
      expect(result.status).to eq 200
    end

    xit 'returns data for zip code in query' do
      query = <<-GQL
        mutation {
          zip_code(
            zip_code: "80226"
          )
        }
      GQL

      result = CommunityRssSchema.execute(query)
      expect(result.city).to eq "Lakewood"
      expect(result.state).to eq "Colorado"
      expect(result.county).to eq "Jefferson"
      expect(result.zip_code).to eq "80226"
    end

    xit "returns error when query fails" do
      query = <<-GQL
        mutation {
          zip_code(
            zip_code: "x"
          )
        }
      GQL
      result = CommunityRssSchema.execute(query)
      expect(result.status).to be unsuccessful
      expect(result.status).to eq 404
    end

    # def zip_query
    #   <<-GQL
    #     mutation {
    #       zip_code(
    #         zip_code: "80226"
    #       )
    #     }
    #   GQL
    # end
  end
end