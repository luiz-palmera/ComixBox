class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :score, :comic_id
end
