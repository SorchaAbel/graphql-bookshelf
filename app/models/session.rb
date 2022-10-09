class Session < ApplicationRecord
  belongs_to :user

  before_save do
    self.key = SecureRandom.hex(42)
  end
end
