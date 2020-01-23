class PictureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :img_url, :roast_bio, :toast_bio, :user_id, :user, :comments, :picture_likes, :picture_dislikes, :created_at
end
 