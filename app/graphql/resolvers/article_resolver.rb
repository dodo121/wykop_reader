# frozen_string_literal: true

module Resolvers
  class ArticleResolver < BaseResolver
    type Types::ArticleType, null: true
    argument :id, ID, required: true

    def resolve(id:)
      Article.find(id)
    end
  end
end
