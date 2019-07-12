class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :name, length: { maximum: 50, message: "too long" }
    validates :name, :email, presence: true
    validates :name, :email, uniqueness: true
    validates :email, format: { with: VALID_EMAIL_REGEX, message: "Its not a valid email"}

    has_many :posts
    has_many :comments
end
