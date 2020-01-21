class PictureSerializer
  include FastJsonapi::ObjectSerializer
  attributes :img_url, :roast_bio, :toast_bio, :user_id
  has_many :comments
end
 