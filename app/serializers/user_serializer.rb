class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :pictures, :comments, :likes, :dislikes, :picture_likes, :picture_dislikes

end
 