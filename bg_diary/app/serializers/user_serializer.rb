class UserSerializer < ActiveModel::Serializer
  has_many :weights
  attributes :id, :username
end
