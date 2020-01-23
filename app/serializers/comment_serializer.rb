class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :roast, :text, :picture_id, :user, :likes, :dislikes
  belongs_to :picture
end
 