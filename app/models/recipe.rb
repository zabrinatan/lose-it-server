class Recipe < ApplicationRecord
  has_many :ingredients
  belongs_to :user, :optional => true
  has_many :nutritions
  # belongs_to :mealplan , :optional => true
end
