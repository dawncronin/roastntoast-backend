class User < ApplicationRecord
    has_many :pictures
    has_many :comments
    has_many :likes
    has_many :dislikes
    has_many :picture_likes
    has_many :picture_dislikes
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
