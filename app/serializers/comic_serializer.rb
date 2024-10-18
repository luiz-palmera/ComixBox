class ComicSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :synopsis, :image_url, :slug

  has_many :reviews
end
