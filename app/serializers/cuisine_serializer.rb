class CuisineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :country, :picture
end
