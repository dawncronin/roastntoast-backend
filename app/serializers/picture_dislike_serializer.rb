class PictureDislikeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :user_id, :picture_id
  end
   