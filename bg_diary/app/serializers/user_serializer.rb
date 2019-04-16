class UserSerializer < ActiveModel::Serializer
  has_many :weights
  has_many :glucoses
  attributes :id, :username
end
