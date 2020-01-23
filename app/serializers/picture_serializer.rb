class PictureSerializer
  include FastJsonapi::ObjectSerializer
  has_many :comments
  attributes :img_url, :roast_bio, :toast_bio, :user, :user_id, :comments, :picture_likes, :picture_dislikes
end
 