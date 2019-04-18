class UserSerializer < ActiveModel::Serializer
  has_many :weights
  has_many :glucoses
  has_many :meals
  attributes :id, :username
end
