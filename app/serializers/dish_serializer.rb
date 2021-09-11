class DishSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :picture, :directions, :ingredients, :cook_time, :yield, :comments

  has_many :comments, serializer: CommentSerializer
end
