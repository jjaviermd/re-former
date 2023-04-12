class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: {in: 3..15}
  validates :email, presence: true, uniqueness: true, format: {
    with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "must be a valid e-mail"}
  validates :password, presence: true, length: {in: 8..10}
end
