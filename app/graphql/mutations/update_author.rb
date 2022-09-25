module Mutations
  class UpdateAuthor < GraphQL::Schema::Mutation
    null false

    argument :author, Types::AuthorInputType, required: true

    def resolve(author:)
      existing_author = Author.find_by(id: author[:id])
      existing_author&.update(author.to_h)
      existing_author
    end
  end
end