class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :picture
    has_many :likes
    has_many :dislikes
end
