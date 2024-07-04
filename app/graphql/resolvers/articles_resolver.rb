# frozen_string_literal: true

module Resolvers
  class ArticlesResolver < BaseResolver
    type Types::ArticleType, null: true
    argument :search, String, required: false

    def resolve(search:)
      debugger
      if search.present?
        Article.where("content like '%#{search}%'")
      else
        Article.all
      end
    end
  end
end
