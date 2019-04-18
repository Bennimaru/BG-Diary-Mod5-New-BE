class MealSerializer < ActiveModel::Serializer
  attributes :datetime, :meal, :category
end
