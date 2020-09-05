class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :poster, :imdbID
  has_many :nominations
  has_many :users, through: :nominations
  
end
