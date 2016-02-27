class CreateCategoryRecommendations < ActiveRecord::Migration
  def change
    create_table :category_recommendations do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.belongs_to :recommendation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
