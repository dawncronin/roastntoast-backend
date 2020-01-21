class Picture < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :picture_likes
    has_many :picture_dislikes
    
end
