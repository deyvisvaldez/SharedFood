# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

food_types = ["Curry", "Dessert", "Sides", "Breakfast"]
food_types.each do |d|
  FoodType.where(name: d).first_or_create
end

food_preferences = ["Vegetarian", "Vegan", "Meat", "Dairy"]
food_preferences.each do |d|
  FoodPreference.where(name: d).first_or_create
end

cuisines = ["Italian", "Mexican", "Indian", "Chinese"]
cuisines.each do |d|
  Cuisine.where(name: d).first_or_create
end