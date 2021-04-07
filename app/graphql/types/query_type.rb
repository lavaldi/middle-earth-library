# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :items,
          [Types::ItemType],
          null: false,
          description: 'Returns a list of items in the middle earth library'
    field :me, Types::UserType, null: true

    def items
      Item.preload(:user)
    end

    def me
      context[:current_user]
    end
  end
end
