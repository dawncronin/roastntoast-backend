class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :roast_boolean, :text, :picture_id, :user_id
end
 