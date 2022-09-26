module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

    field :update_author, Types::AuthorType, mutation: Mutations::UpdateAuthor

    field :delete_author, Types::AuthorType, mutation: Mutations::DeleteAuthor
  end
end