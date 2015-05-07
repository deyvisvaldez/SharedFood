class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cooking_time
      t.string :difficulty_level
      t.references :food_type, index: true, foreign_key: true
      t.references :food_preference, index: true, foreign_key: true
      t.references :cuisine, index: true, foreign_key: true
      t.text :ingredients
      t.text :prodecure

      t.timestamps null: false
    end
  end
end
