class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :roast, :text, :picture_id, :user, :likes, :dislikes
end
 