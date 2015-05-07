class Recipe < ActiveRecord::Base
  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine

  DIFFICULTY = %w(Easy Medium Hard)
end
