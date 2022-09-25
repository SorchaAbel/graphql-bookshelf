# frozen_string_literal: true

module Types
  class AuthorInputType < GraphQL::Schema::InputObject
    graphql_name "AuthorInputType"
    description "All the attributes needed to create or update an author"

    argument :id, ID, required: false
    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :dob, Int, required: false
    argument :is_alive, Boolean, required: false
  end
end