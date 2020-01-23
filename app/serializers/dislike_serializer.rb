class DislikeSerializer
    include FastJsonapi::ObjectSerializer
    attributes :user_id, :comment_id
  end
   