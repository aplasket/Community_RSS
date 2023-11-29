# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :find_community, mutation: Mutations::FindCommunity
  end
end
