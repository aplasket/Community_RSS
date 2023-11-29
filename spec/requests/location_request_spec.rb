require 'rails_helper'

module Mutations
  RSpec.describe 'Location Request API' do
    describe 'mutation request' do
      it 'get successful response' do
        query = mutation
        expect(query).to be_a(Hash)
        expect(query).to have_key(:findCommunity)
        require 'pry'; binding.pry

        # expect(query[:findCommunity]).to have_key(:message)
          # uncommit this expect statement when you finish the resolve method
          # you'll want to update your resolve message in the mutation to include a message key
          # with the info you want to provide the frontend
      end

      private
      def mutation
        # since we added graphiql to the gems we can use gql here. see graphql_helper.rb to see the call
        query = gql <<-GQL
          mutation findCommunity {
            findCommunity(
              input: {
                zipCode: "80226"
              }
              )
            {
              message
            }
          }
        GQL
        query.dig(:data)
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
        # expect
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
        expect(result[:data]).to eq nil
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
end
