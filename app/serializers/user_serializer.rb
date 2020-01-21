class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username
  has_many :pictures
  has_many :comments
  has_many :likes
  has_many :dislikes
end
 