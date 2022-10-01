# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String
    field :last_name, String
    field :dob, Int
    field :is_alive, Boolean
    field :full_name, String, null: true

    def full_name
      "#{object.first_name} #{object.last_name}"
    end

    field :coordinates, Types::CoordinatesType, null: false
    field :publication_years, [Int], null: false
    field :errors, [Types::ErrorTypes], null: true
  end

  def errors
    object.errors.map{|e| {field_name: e.attribute, errors: object.errors[e.attribute]}}
  end
end

