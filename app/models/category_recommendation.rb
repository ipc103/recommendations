class CategoryRecommendation < ActiveRecord::Base
  belongs_to :category
  belongs_to :recommendation
end
