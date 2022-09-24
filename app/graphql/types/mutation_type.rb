module Types
  class MutationType < Types::BaseObject
    field :create_author, Types::AuthorType, null: false, description: "Create an author" do
      argument :first_name, String, required: false
      argument :last_name, String, required: false
      argument :dob, Int, required: false
      argument :is_alive, Boolean, required: false
    end

    def create_author(first_name:, last_name:, dob:, is_alive:)
      Author.create(first_name: first_name, last_name: last_name, dob: dob, is_alive: is_alive)
    end
  end
end
