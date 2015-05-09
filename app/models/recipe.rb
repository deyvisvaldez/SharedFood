class Recipe < ActiveRecord::Base
  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine
  validates :title, presence: true
  validates :food_preference_id, presence: true
  validates :food_type_id, presence: true
  validates :cuisine_id, presence: true

  DIFFICULTY = %w(Easy Medium Hard)

end
