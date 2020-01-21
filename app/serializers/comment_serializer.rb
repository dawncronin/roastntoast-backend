class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :roast, :text, :picture_id, :user_id, :likes, :dislikes
end
 