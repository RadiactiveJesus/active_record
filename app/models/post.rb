class Post < ApplicationRecord
    validates :title, :body, presence: true
    validates :user_id, presence: true, numericality: { greater_than: 0 }

    belongs_to :user
    has_many :comments
end
