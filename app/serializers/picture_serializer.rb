class PictureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :img_url, :roast_bio, :toast_bio, :user_id, :comments, :picture_likes, :picture_dislikes
end
 