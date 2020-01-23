class LikeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :user_id, :comment_id
    belongs_to :comment
    belongs_to :user
  end
   