class Category < ActiveRecord::Base
  has_many :category_recommendations
  has_many :recommendations, through: :category_recommendations
end
