json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :cooking_time, :difficulty_level, :food_type_id, :food_preference_id, :cuisine_id, :ingredients, :prodecure
  json.url recipe_url(recipe, format: :json)
end
