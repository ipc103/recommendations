class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :content
      t.string :image_url

      t.timestamps null: false
    end
  end
end
