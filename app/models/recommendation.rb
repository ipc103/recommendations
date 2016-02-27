class Recommendation < ActiveRecord::Base
  has_many :category_recommendations
  has_many :categories, through: :category_recommendations
end
