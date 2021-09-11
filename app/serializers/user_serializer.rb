class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name
  has_many :dishes, serializer: DishSerializer
end
