class FoodPreference < ActiveRecord::Base
	has_many :recipes
end
