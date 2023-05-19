class User < ApplicationRecord
  has_many :reservations

  attribute :admin, :boolean, default: false
end
