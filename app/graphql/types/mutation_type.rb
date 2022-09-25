module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor

    field :update_author, Types::AuthorType, mutation: Mutations::UpdateAuthor
  end
end