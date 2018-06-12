class User < ApplicationRecord

  validates :name, uniqueness: { case_sensitive: false }
  validates :password, length: { in: 3..10 }, on: :create

	has_many :favorites
end
