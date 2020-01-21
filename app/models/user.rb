class User < ApplicationRecord
    has_many :pictures
    has_many :comments
    has_many :likes
    has_many :dislikes
    has_secure_password
end
