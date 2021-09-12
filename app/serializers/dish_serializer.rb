class DishSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :picture, :directions, :ingredients, :cook_time, :comments

  has_many :comments, serializer: CommentSerializer
end
