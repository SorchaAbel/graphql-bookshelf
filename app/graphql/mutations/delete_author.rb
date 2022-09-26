module Mutations
  class DeleteAuthor < GraphQL::Schema::Mutation
    null false

    argument :id, ID, required: true

    def resolve(id:)
      Author.where(id: id).destroy_all
      {
          id: id
      }
    end
  end
end
