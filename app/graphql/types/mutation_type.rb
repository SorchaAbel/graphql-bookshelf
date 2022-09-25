module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor
    field :update_author, Boolean, null: false, description: "update an author" do
      argument :author, Types::AuthorInputType, required: true
    end

    def update_author(author:)
      author = Author.find_by(id: author[:id])
      binding.pry
      author&.update(author.to_h)
    end
  end
end
